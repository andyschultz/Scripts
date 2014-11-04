#!/usr/local/bin/python3

import pandas as pd, numpy as np, glob, sys
from datetime import datetime

def readline_number_x(file,x):
    
    for index,line in enumerate(iter(file)):
        if index+1 == x: return line

    return None

def buildrow(i):    
    row = filelist[i]
    date = readline_number_x(open(row),3)
    date = date.lstrip("Date: ")
    date = date.rstrip("\n")
    date = date.split()
    date.pop(4)
    date = " ".join(date)
    date = datetime.strptime(date,'%a %b %d %X %Y')
    date = datetime.strftime(date,'%Y-%m-%d %X')
    print(row + " " + date)
    df = pd.read_csv(row,skiprows=17,sep="\t",header=None)
    df = df.drop([2048],axis=0)
    df = df.drop([0],axis=1)
    df[df < 1] = np.nan
    k = df[1].values.tolist()
    k = ["%.3f" % i for i in k]
    k.insert(0,date)
    l.append(k)
    i=i+interval

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

interval = 1

while i<len(filelist):
    buildrow(i)
    i= i + interval

df = pd.DataFrame(l,columns=headers)

print("Building the cumulative time column...")

df["#Date/Time"] = pd.to_datetime(df.iloc[:,0])  

df.insert(1,"Cumulative Time","NaN")
df["Cumulative Time"] = (df.iloc[:,0]-df.iloc[:,0].shift()).fillna(0) 
df["Cumulative Time"] = df["Cumulative Time"].cumsum(axis=0)
df["Cumulative Time"] = df["Cumulative Time"] / np.timedelta64(1,'h')
df["Cumulative Time"] = df["Cumulative Time"].map('{:.4f}'.format)




df.to_csv("../"+outfile,index=False,sep="\t",na_rep="NaN")


