#!/usr/local/bin/python3

import pandas as pd,sys,os


file = sys.argv[1] #Change this to take a system argument
threshold = 50


#Automatically removes lines starting with '#' except for the first line
os.rename(file,"temp.txt")
with open(file,"w") as output:
    i = 0
    with open("temp.txt") as f:
        for line in f:
            if i == 0:
                output.write(line.replace('# Time\tElapsed Time','Timestamp\tTimeElapsed'))
            elif line.startswith('#'):
                print("Removed header line "+str(i))
            elif line.endswith('0.0000\n'):
                print("Removed bad reading line "+str(i))
            else:
                output.write(line)
            i += 1

os.remove("temp.txt")
        



def remove_outliers(file):
    df = pd.read_csv(file,sep='\t')
    df.iloc[:,2:df.shape[1]]=df.iloc[:,2:df.shape[1]].where(df.iloc[:,2:df.shape[1]] >threshold)
    df.to_csv(file,index=False,sep="\t",na_rep="NaN")
    
remove_outliers(file)

os.rename(file,"temp.txt")
with open(file,"w") as output:
    i = 0
    with open("temp.txt") as f:
        for line in f:
            if i == 0:
                output.write(line.replace('Timestamp\tTimeElapsed','Date\tTime\tElapsed'))
            else:
                output.write(line)
            i += 1
os.remove("temp.txt")
    
