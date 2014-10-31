#!/usr/local/bin/python3

import pandas as pd, numpy as np, glob, sys

basefile = sys.argv[1]
outfile = basefile+'-compiled.txt'
filelist = glob.glob(basefile+"*[0-9]*")



l=[]


# Write the first line (wavelengths)
df = pd.read_csv(filelist[0],skiprows=1,sep="\t",header=None)
df = df.drop([1,2],axis=1)
df = df*1000000000
k = df[0].values.tolist()
headers = ["%.2f" % i for i in k]
headers.insert(0,"#Date/Time")
# l.append(k)

i=0
interval = 10

while i<len(filelist):
    row = filelist[i]
    with open(row,'r') as r:
        firstline = r.readline()
        firstline = firstline.lstrip("#\t")
        firstline = firstline.rstrip("\n")
    print(row + " " + firstline)
    df = pd.read_csv(row,skiprows=1,sep="\t",header=None)
    df = df.drop([0,1],axis=1)
    df[df < 1] = np.nan
    k = df[2].values.tolist()
    k = ["%.4f" % i for i in k]
    k.insert(0,firstline)
    l.append(k)
    i=i+interval

df = pd.DataFrame(l,columns=headers)

print("Building the cumulative time column...")

df["#Date/Time"] = pd.to_datetime(df.iloc[:,0])  

df.insert(1,"Cumulative Time","NaN")
df["Cumulative Time"] = (df.iloc[:,0]-df.iloc[:,0].shift()).fillna(0) 
df["Cumulative Time"] = df["Cumulative Time"].cumsum(axis=0)
df["Cumulative Time"] = df["Cumulative Time"] / np.timedelta64(1,'h')
df["Cumulative Time"] = df["Cumulative Time"].map('{:.4f}'.format)




df.to_csv("../"+outfile,index=False,sep="\t",na_rep="NaN")


