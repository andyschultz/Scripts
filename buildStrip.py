#!/usr/local/bin/python3

import pandas as pd, numpy as np, glob, sys


def find_nearest(array,value):
    idx = (np.abs(array-value)).argmin()
    return idx # Return the row index for the correct line (not the value)


basefile = sys.argv[1]
wavelengths = [] # Empty list to collect wavelengths from sys.argv
for item in sys.argv[2:len(sys.argv)]:
    wavelengths.append(float(item)/1e9)
    
wavelengths = np.array(wavelengths) # format strip wavelengths to numpy array
filelist = glob.glob(basefile+"*[0-9]*") # build list of files




df = pd.read_csv(filelist[0],skiprows=1,sep="\t",header=None)

solutions = [] # will contain the index of the row closest to the selected wavelengths
headings = ["#Date/Time"]
for item in wavelengths:
    solutions.append(find_nearest(df[0],item))
    
for item in solutions:
    headings.append(("%.2f" % ((df[0][item])*1e9))+" nm")

output = []
print("Building strip file...")

for file in filelist:
    with open(file,'r') as f:
        firstline = f.readline()
        firstline = firstline.lstrip("#\t")
        firstline = firstline.rstrip("\n")
        # firstline = firstline.replace(" ","\t")
    df = pd.read_csv(file,skiprows=1,sep="\t",header=None)
    stripline = [firstline]
    for item in solutions:
        stripline.append(df[2][item])
    output.append(stripline)
    
df = pd.DataFrame(output,columns=headings)
df["#Date/Time"]= pd.to_datetime(df["#Date/Time"])  

df.insert(1,"Cumulative Time","NaN")
df["Cumulative Time"] = (df["#Date/Time"]-df["#Date/Time"].shift()).fillna(0) 
df["Cumulative Time"] = df["Cumulative Time"].cumsum(axis=0)
df["Cumulative Time"] = df["Cumulative Time"] / np.timedelta64(1,'h')





print("Checking for outlier points...")
cutoff = 15 #Value below which readings are considered outliers
i = 2
for i in range (i,df.shape[1]):
    outliers = df.iloc[:,i][ df.iloc[:,i]<(cutoff)]
    print("    "+str(outliers.shape[0])+" found in "+headings[i-1]+" strip")
    for idx in outliers.index:
        loc = df.index.get_loc(idx)
        # print("    " + str(idx) +'\t'+ str(df.iloc[loc,i]))
        df.iloc[loc,i] = "NaN"
    i+=1


df.to_csv(basefile+"-strip.txt",index=False,sep="\t")


gp = open('strip.gp','w')



