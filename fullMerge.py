#!/usr/local/bin/python3

# ======================================================
# Merges processed UV/Vis and NIR files from System 2
# ======================================================


import pandas as pd, numpy as np, readline
# ======================================================
# Change the following lines as necessary
# ======================================================
gasflows = "gasflows.txt"
nir = "nir.txt"
vis = "vis.txt"
output = "fulldata.txt"
# ======================================================
# ======================================================



def stripseconds(dataframe):
    # Removes second information from timestamp
    i = 0
    while i<dataframe.shape[0]:
        j = dataframe["Timestamp"][i].split(":")
        j[2] = '00'
        dataframe["Timestamp"][i] = ":".join(j)
        i+=1


gasdf = pd.read_csv(gasflows, sep="\t",)
gasdf.pop("Elapsed")
gasdf.rename(columns={"Date Time":"Timestamp"},inplace=True)
gasdf["Timestamp"] = pd.to_datetime(gasdf["Timestamp"])


# Import NIR file (after removing outliers and formatting with findOutliers.py)
fo = open(nir,"r")
header = fo.readline()
header = header.replace("Date\tTime","Timestamp")
header = header.rstrip("\n")
header = header.split("\t")

nirdf = pd.read_csv(nir,sep="\t",names=header,skiprows=1)
nirdf.pop("Elapsed")
stripseconds(nirdf)
grouped = nirdf.groupby("Timestamp")
nirdf = grouped.agg(np.mean)
nirdf.reset_index(level=0, inplace=True)
nirdf["Timestamp"] = pd.to_datetime(nirdf["Timestamp"])

# Import vis file (after merging SpectraSuite files to one file)
fo = open(vis,"r")
header = fo.readline()
header = header.replace("Date\tTime","Timestamp")
header = header.rstrip("\n")
header = header.split("\t")

visdf = pd.read_csv(vis,sep="\t",names=header,skiprows=1)
visdf.pop("Elapsed")

stripseconds(visdf)
visdf["Timestamp"] = pd.to_datetime(visdf["Timestamp"])


merged = pd.merge(visdf,nirdf,on="Timestamp",how="inner")

merged.set_index("Timestamp",inplace=True)

list = merged.columns.values
list = np.float64(list)
merged.columns=list
merged.sort_index(axis=1,inplace=True)
merged.reset_index(level=0, inplace=True)

merged = pd.merge(gasdf,merged,on="Timestamp", how="right")
merged.set_index("Timestamp",inplace=True)
merged.reset_index(level=0, inplace=True)
merged.sort("Timestamp",inplace=True)



merged.insert(1,"Elapsed","NaN")
merged["Elapsed"] = (merged["Timestamp"]-merged["Timestamp"].shift()).fillna(0) 
merged["Elapsed"] = merged["Elapsed"].cumsum(axis=0)
merged["Elapsed"] = merged["Elapsed"] / np.timedelta64(1,'h')
merged["Elapsed"] = merged["Elapsed"].map('{:.5f}'.format)

merged.rename(columns={"Timestamp":"Date Time"},inplace=True)

merged.to_csv(output,index=False,sep="\t",na_rep="NaN",float_format='%.4f')