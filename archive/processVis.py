#!/usr/local/bin/python

# Takes data from SpectraSuite (tab-delimited no header) 
# and adds a rolling average column
# with the rolling average centered.
# Arguments are {Filename} {Averaging Window}

import os,sys,glob,linecache,pandas as pd,numpy as np, datetime
from os import system
from dateutil import parser


filelist = glob.glob('*.txt')

for row in filelist:
    newname = row.replace('..','.')
    os.renames(row,newname)

filelist = glob.glob('*.txt')
 
window = 19

    
    



gp = open('strip.gp','w')

gp.write("unset title\n")
gp.write("set key right bottom\n")
gp.write("set border 15\n")
gp.write("set xlabel 'Time'\n")
gp.write("set xtics in mirror\n")
gp.write("set ytics in mirror\n")
gp.write("set ylabel 'Transmission'\n")
gp.write("set xdata time\n")
gp.write("set timefmt '%Y-%m-%d %H:%M:%S' \n")
gp.write("set format x '%H:%M' \n")


    

def processStrip(file,w):
    
    date = linecache.getline(file,1)
    date = date.lstrip("Start time: ")
    date = date.rstrip("\n")
    date = parser.parse(date)
    start_date = date.strftime("%Y-%m-%d")
    delta = datetime.timedelta(days=1)
    next_day = date + delta
    next_day = next_day.strftime("%Y-%m-%d")


    wavelength = linecache.getline(file,2)
    wavelength = wavelength.replace("Trend type: Single Wavelength at ", "# ")    
    
    df=pd.read_csv(file,delimiter='\t',skiprows=5,header=None)
    
    breakpoint = int(len(df.index))
    i=0
    while i<len(df.index):
        hour = df[0][i]
        hour = hour.split(":")
        if hour[0]=="00":
            breakpoint=int(i)
            break
        else:
            i += 1
    
    if breakpoint==int(len(df.index)):
        df[0][0:breakpoint] = start_date+" "+df[0][0:breakpoint]
    else:    
        df[0][0:breakpoint] = start_date+" "+df[0][0:breakpoint]
        df[0][breakpoint:len(df.index)] = next_day+" "+df[0][breakpoint:len(df.index)]
    
          
    cutoff = 0.5
    
    outliers = df[2][ df[2]<(cutoff)]
    
    for idx in outliers.index:
        loc = df.index.get_loc(idx)
        print("    " + str(idx) +'\t'+ str(df[2][loc]))
        df[2][loc] = np.mean( df[2][loc-3:loc-1] )
    
    
    df[3]=pd.rolling_mean(df[2],w,center=True)
    
    df.to_csv(file,na_rep='NaN',sep='\t',header=False,index=False)
    
    with open(file,'r+') as f:
        s = f.read()
        f.seek(0)
        f.write(wavelength + s)

    
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
    gp.write("plot '"+row+"' u 1:4 w p ls 495 pt 0 notitle,\\\n")
    gp.write("'' every 2 u 1:5 w l ls 4 lw 3 t '"+first_line+"'\n")
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
    gp.write("'"+row+"' every 10 u 1:4 w p ls "+ linestyle +"95 pt 0 notitle,\\\n")
    gp.write("'' every 25 u 1:5 w l ls "+ linestyle +" lw 3 t '"+first_line+" nm',\\\n")

gp.write("\n")
gp.write("set output \n")
gp.write("system 'open full.pdf'\n\n")
   
gp.close()
system('gnuplot strip.gp')
    
    
    
    