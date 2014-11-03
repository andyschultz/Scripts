#!/usr/local/bin/python3

import pandas as pd, numpy as np, glob, sys

def readline_number_x(file,x):
    for index,line in enumerate(iter(file)):
        if index+1 == x: return line

    return None



basefile = sys.argv[1]
outfile = basefile+'-compiled.txt'
filelist = glob.glob(basefile+"*[0-9]*")





l=[]


# Write the first line (wavelengths)
df = pd.read_csv(filelist[0],skiprows=17,sep="\t",header=None)
df = df.drop([2048],axis=0)
df = df.drop([1],axis=1)
headers = df[0].values.tolist()
headers.insert(0,"#Date/Time")
# l.append(k)

i=0
interval = 10

while i<len(filelist):
    row = filelist[i]
    date = readline_number_x(row,3)
    date = date.lstrip("Date: ")
    date = date.rstrip("\n")
    # datetime.strptime(date,"%a %b %d %H:%M:%S %Z %Y") This isn't working. 'module' object has no attribute 'strptime'. Should the right syntax, though the time zone in the computer is wrong.
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


