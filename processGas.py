#!/usr/local/bin/python3


# Processes the gasflow file as output from the test system, screening for extra header lines and removing negative numbers
# Run as: python3 processGas.py

import pandas as pd, numpy as np, sys,os

file = "gasflows.txt" # Change this line if the file name is different

# Added the following section 12/17/2014 to automatically remove commented lines after the first line
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

# Import gasflow data as a pandas dataframe with proper headers
df = pd.read_csv(file,names=["Date Time","N_2","O_2","H_2","CO","CO_2","CH_4"],skiprows=1,sep="\t")

# Build the elapsed time column
df["Date Time"]= pd.to_datetime(df["Date Time"])  
df.insert(1,"Elapsed","NaN")
df["Elapsed"] = (df["Date Time"]-df["Date Time"].shift()).fillna(0) 
df["Elapsed"] = df["Elapsed"].cumsum(axis=0)
df["Elapsed"] = df["Elapsed"] / np.timedelta64(1,'h')
df["Elapsed"] = df["Elapsed"].map('{:.5f}'.format)

# Screen out any (nonsensical) negative values
num = df._get_numeric_data()
num[num < 0] = 0

# Output to text file
df.to_csv(file,index=False,sep="\t")



