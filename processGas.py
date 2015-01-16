#!/usr/local/bin/python3

import pandas as pd, numpy as np, sys,os


    


file = "gasflows.txt"


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


df = pd.read_csv(file,names=["Date Time","N_2","O_2","4%H_2","10%CO","CH4","H_2"],skiprows=1,sep="\t")



df["Date Time"]= pd.to_datetime(df["Date Time"])  

df.insert(1,"Elapsed","NaN")
df["Elapsed"] = (df["Date Time"]-df["Date Time"].shift()).fillna(0) 
df["Elapsed"] = df["Elapsed"].cumsum(axis=0)
df["Elapsed"] = df["Elapsed"] / np.timedelta64(1,'h')
df["Elapsed"] = df["Elapsed"].map('{:.5f}'.format)

# df["N_2"]= df["N_2"].where(df["N_2"]>0)
# df["O_2"]= df["O_2"].where(df["O_2"]>0)
# df["CO"]= df["CO"].where(df["CO"]>0)
# df["H_2"]= (df["H_2"]).where(df["H_2"]>0)



df.to_csv(file,index=False,sep="\t")



