import pandas as pd


samples = ["2500","2525","2550","2575","25100","0050","5050","7550","10050"]
folders = ["1. AsCalcined","2. Reduced","3. Oxidized"]
floatcols = ["T_AsCalcined","R_AsCalcined","A_AsCalcined","T_Reduced1","R_Reduced1","A_Reduced1","T_Oxidized1","R_Oxidized1","A_Oxidized1"]


for composition in samples:
    calcined = pd.read_csv(folders[0]+"/"+composition+".txt",sep="\t",names = ["nm","T_AsCalcined","R_AsCalcined","A_AsCalcined"],skiprows=1)
    reduced = pd.read_csv(folders[1]+"/"+composition+".txt",sep="\t",names = ["nm","T_Reduced1","R_Reduced1","A_Reduced1"],skiprows=1)
    oxidized = pd.read_csv(folders[2]+"/"+composition+".txt",sep="\t",names = ["nm","T_Oxidized1","R_Oxidized1","A_Oxidized1"],skiprows=1)
    result = pd.merge(calcined,reduced,left_on="nm",right_on="nm")
    result = pd.merge(result,oxidized,left_on="nm",right_on="nm")
    result["nm"]=result["nm"].map('{:.0f}'.format)
    for column in floatcols:
        result[column]=result[column].map('{:.6f}'.format)
    result.to_csv(composition+"_combined.txt",sep="\t",index=False,header=True)