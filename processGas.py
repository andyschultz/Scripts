#!/usr/local/bin/python3

import pandas as pd, numpy as np, sys


    


file = "gasflows.txt"


df = pd.read_csv(file,names=["Datetime","N2","O2","4% H2","10% CO","CH4","H2"],skiprows=1,sep="\t")



df["Datetime"]= pd.to_datetime(df["Datetime"])  

df.insert(1,"Cumulative Time","NaN")
df["Cumulative Time"] = (df["Datetime"]-df["Datetime"].shift()).fillna(0) 
df["Cumulative Time"] = df["Cumulative Time"].cumsum(axis=0)
df["Cumulative Time"] = df["Cumulative Time"] / np.timedelta64(1,'h')
df["Cumulative Time"] = df["Cumulative Time"].map('{:.5f}'.format)


df.to_csv(file,index=False,sep="\t")



