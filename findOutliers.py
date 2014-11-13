#!/usr/local/bin/python3

import pandas as pd,sys


file = sys.argv[1] #Change this to take a system argument
threshold = 10

def remove_outliers(file):
    df = pd.read_csv(file,sep='\t')
    df.iloc[:,2:df.shape[1]]=df.iloc[:,2:df.shape[1]].where(df.iloc[:,2:df.shape[1]] >threshold) # df.shape[1] is the number of columns
    df.to_csv(file,index=False,sep="\t",na_rep="NaN")
    
remove_outliers(file)