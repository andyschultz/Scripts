#!/usr/local/bin/python3

import pandas as pd, numpy as np,sys

file = sys.argv[1]

def buildDelta(file):
    df = pd.read_csv(file,sep="\t",index_col=False,skiprows=1)
    
    
    df.iloc[:,0]= pd.to_datetime(df.iloc[:,0])  
    
    df.insert(1,"Cumulative Time","NaN")
    df["Cumulative Time"] = (df.iloc[:,0]-df.iloc[:,0].shift()).fillna(0) 
    df["Cumulative Time"] = df["Cumulative Time"].cumsum(axis=0)
    df["Cumulative Time"] = df["Cumulative Time"] / np.timedelta64(1,'h')
    
    df.to_csv(file.rstrip(".txt")+"-delta.txt",index=False,sep="\t")
    
buildDelta(file)