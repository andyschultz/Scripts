#!/usr/local/bin/python3

# Takes data from NIR automation VI and adds a rolling average column
# with the rolling average centered.
# Arguments are {Filename} {Averaging Window}

import sys,glob,pandas as pd,numpy as np
from os import system
filelist = glob.glob('*.txt')
window = 19

gp = open('strip.gp','w')

gp.write("unset title\n")
gp.write("set key right bottom\n")
gp.write("set border 15\n")
gp.write("set xlabel 'Time'\n")
gp.write("set ylabel 'Transmission'\n")
gp.write("set xdata time\n")
gp.write("set timefmt '%Y-%m-%d %H:%M:%S' \n")
gp.write("set format x '%H:%M' \n")


def processStrip(file,w):
    with open(file,'r') as f:
        first_line = f.readline()
        
    
    df=pd.read_csv(file,delimiter='\t',skiprows=1,header=None,parse_dates=[0])
    
    mean = df.mean()
    mean = mean[2]
    std = df.std()
    std = std[2]
    cutoff = 0.5
    
    outliers = df[2][ df[2]<(cutoff)]
    
    for idx in outliers.index:
        loc = df.index.get_loc(idx)
        print("    " + str(idx) +'\t'+ str(df[2][loc]))
        df[2][loc] = np.mean( df[2][loc-3:loc-1] )
        
    
    df[3]=pd.rolling_mean(df[2],w,center=True)
    # df[4]= (df[0]-df[0].shift()).fillna(0)   TURNS OUT I ALREADY HAD CUMULATIVE TIME
#     df[4] = df[4].cumsum(axis=0)
#     df[4] = df[4] / np.timedelta64(1,'h')
    
    
    df.to_csv(file,na_rep='NaN',sep='\t',header=False,index=False)
    
    with open(file,'r+') as f:
        s = f.read()
        f.seek(0)
        f.write(first_line + s)

    
for row in filelist:
    print(str(row))
    with open(row,'r') as f:
        first_line = f.readline()
    first_line = first_line.lstrip("#")
    first_line = first_line.rstrip("\n")
    processStrip(row,window)
    outfile = row.replace('txt','pdf')
    title = row.rstrip('.txt')
    gp.write("set output '"+outfile+"' \n")
    gp.write("plot '"+row+"' every 1 u 1:5 w l ls 4 t '"+first_line+"'\n")
    gp.write("set output \n")
    gp.write("system 'open "+outfile+"'\n\n")
    
gp.write("set output 'full.pdf' \n")
gp.write("plot ")
print("Full")

for row in filelist:
    with open(row,'r') as f:
        first_line = f.readline()
    first_line = first_line.lstrip("#")
    first_line = first_line.rstrip("\n")
    linestyle = str((filelist.index(row) % 8) + 1)
    gp.write("'"+row+"' every 15 u 1:5 w l ls "+ linestyle +" t '"+first_line+"',\\\n")

gp.write("\n")
gp.write("set output \n")
gp.write("system 'open full.pdf'\n\n")
   
gp.close()
system('gnuplot strip.gp')
    
    
    
    