#!/usr/local/bin/python3

import sys,glob,linecache, argparse, pandas as pd, numpy as np
from os import system


def find_nearest(array,value):
    idx = (np.abs(array-value)).argmin()
    return idx

gasflows = "gasflows.txt"

# basefile = sys.argv[1] # UNCOMMENT WHEN DONE
basefile = "transmission"

filelist = glob.glob(basefile+"*[0-9].txt")

gasdata = pd.read_csv(gasflows, skiprows=1,sep="\t", header=None, index_col=0, names = ['time','cumetime','N2','O2','H2','CO','CO2','CH4'])
gasdata['H2']=gasdata['H2']/25
gasdata['CO']=gasdata['CO']/10


df = pd.read_csv(filelist[0],skiprows=1,header=None, sep="\t")
array = pd.Series(df[0]*1000000000) # Create a pandas series using the first row of the processed data file
array = array.convert_objects(convert_numeric=True)
# wavelengths = sys.argv[2:len(sys.argv)] # Take command line arguments for wavelengths of strip file UNCOMMENT WHEN DONE
wavelengths = [1200,1400,1600,1800,2000,2200,2400]

stripindex = [] # populated by the next cell with the correct indices
for item in wavelengths:
    value = int(item)
    stripindex.append(find_nearest(array,value))
    

output = []
for file in filelist:
    try:
        datetime = linecache.getline(file,1)
        datetime = datetime.rstrip("\n").lstrip("#\t").replace("/","-") # Read the first line for timestamp, format correctly
        row = gasdata.loc[datetime]
        row = pd.DataFrame(row)
    except:
        row = {datetime:pd.Series([0.,0.,0.,0.,0.,0.],index = ['N2','O2','H2','CO','CO2','CH4'])}
        row = pd.DataFrame(row)
    
    H2 = row[datetime]['H2']
    O2 = row[datetime]['O2']
        
    df = pd.read_csv(file,skiprows=1,header=None, sep="\t")
    values = df[2][stripindex]
    values = values.tolist()
    values.insert(0,H2)         # Append H2 flow value to list
    values.insert(0,O2)         # Append 02 flow value to list
    values.insert(0,datetime)   # Append Datetime value to list
    output.append(values)       # Add the row entry to the overall list
    
output = pd.DataFrame(output)
output[0] =  pd.to_datetime(output.iloc[:,0]) 
output.insert(1,"Cumulative Time","NaN")
output["Cumulative Time"] = (output.iloc[:,0]-output.iloc[:,0].shift()).fillna(0) 
output["Cumulative Time"] = output["Cumulative Time"].cumsum(axis=0)
output["Cumulative Time"] = output["Cumulative Time"] / np.timedelta64(1,'h')
output["Cumulative Time"] = output["Cumulative Time"].map('{:.5f}'.format)

headers = wavelengths
headers.insert(0,"H2")
headers.insert(0,"O2")
headers.insert(0,"Cumulative Time")
headers.insert(0,"#Datetime")

output.to_csv("test.txt",index=False,sep="\t",na_rep="NaN",header=headers)

i = 3

gp = open("test.gp",'w')

gp.write("set term png size 2400,1800 fontscale 4.0 font \"Charter, 10\" transparent\n")
gp.write("set border lc rgb \"#FFFFFF\" lw 3")

for file in filelist:
    output = file.replace(".txt",".png")
    gp.write("set output \""+output+"\"\n")
    gp.write("set multiplot layout 2,1\n")
    gp.write("unset key\n")
    gp.write("set xrange [900:2600]\n")
    gp.write("set yrange [0.5:1.5]\n")
    gp.write("set y2range [0.0:10]\n")
    gp.write("plot \""+str(file)+"\" u ($1*1000000000):3 w l lc rgb \"#FFFFFF\" lw 3 \n")
    gp.write("set autoscale x\n")
    gp.write("plot for [i=6:"+str(len(headers)+1)+"] \"<sed -n '3,"+str(i)+"p' test.txt\" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2\n")
    gp.write("unset multiplot\n")
    gp.write("unset output\n")
    i+=1
    

gp.close()

system('gnuplot test.gp')
