#!/usr/local/bin/python3

import pandas as pd,sys,os


file = sys.argv[1] #Change this to take a system argument
threshold = 10


#Automatically removes lines starting with '#' except for the first line
os.rename(file,"temp.txt")
with open(file,"w") as output:
    i = 0
    with open("temp.txt") as f:
        for line in f:
            if i == 0:
                output.write(line)
            elif line.startswith('#'):
                print("Removed line "+str(i))
            else:
                output.write(line)
            i += 1
os.remove("temp.txt")           
        



def remove_outliers(file):
    df = pd.read_csv(file,sep='\t')
    df.iloc[:,2:df.shape[1]]=df.iloc[:,2:df.shape[1]].where(df.iloc[:,2:df.shape[1]] >threshold) # df.shape[1] is the number of columns
    df.to_csv(file,index=False,sep="\t",na_rep="NaN")
    
remove_outliers(file)