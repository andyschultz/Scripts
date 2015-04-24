#!/usr/local/bin/python3

import pandas as pd


# samples = ["2500","2525","2550","2575","25100","0050","5050","7550","10050"]
folders = ["1. Calcined","2. Reduced","3. Oxidized"]
floatcols = ["I_Calcined","I_Reduced","I_Oxidized"]

i = 1
while i<10:
    calcined = pd.read_csv(folders[0]+"/"+str(i)+".csv",sep=",",names = ["Angle","I_Calcined"],skiprows=27)
    reduced = pd.read_csv(folders[1]+"/"+str(i)+".csv",sep=",",names = ["Angle","I_Reduced"],skiprows=27)
    oxidized = pd.read_csv(folders[2]+"/"+str(i)+".csv",sep=",",names = ["Angle","I_Oxidized"],skiprows=27)
    result = pd.merge(calcined,reduced,left_on="Angle",right_on="Angle")
    result = pd.merge(result,oxidized,left_on="Angle",right_on="Angle")
    result["Angle"]=result["Angle"].map('{:.9f}'.format)
    for column in floatcols:
        result[column]=result[column].map('{:.0f}'.format)
    result.to_csv(str(i)+".txt",sep="\t",index=False,header=True)
    i+=1
    