#!/usr/local/bin/python3

import pandas as pd,numpy as np,fnmatch
from os import system


number_of_files = int(input('How many spectra?\n')) 

filelist = []

for x in range(0,number_of_files):
    newitem = input('Enter filename '+str(x+1)+' of '+str(number_of_files)+':\n')
    filelist.append(newitem)
    

gp = open('Optical.gp','w')

gp.write("unset title\n")
gp.write("set key right center\n")
gp.write("set border 15\n")
gp.write("set xlabel 'Wavelength (nm)'\n")
gp.write("set ylabel 'Transmission/Reflection/Absorption (%)' offset 3\n")
# gp.write("set xtics 200,100\n\n")

def processOptical(tfile,rfile,ofile):
    dfs = []
    df = pd.read_csv(tfile)
    df.columns = ['nm','T']
    dfs.append(df)
    df = pd.read_csv(rfile)
    df.columns = ['nm2','R']
    dfs.append(df)
    dfs = pd.concat(dfs,axis=1)
    dfs = dfs.drop('nm2',1)       
    dfs['A']=100-dfs['T']-dfs['R'] 
    csv = dfs
    csv['nm'].apply(str)
    csv.to_csv(ofile, index=None, sep='\t', float_format='%11.6f')
    
for row in filelist:
    processOptical(row+'T.Sample.Raw.csv',row+'R.Sample.Raw.csv',row+'.txt')
    outfile = row+".pdf"
    sourcefile = row+".txt"
    gp.write("@pdf\nset output '"+outfile+"' \n")
    gp.write("set xrange [200:2500] \n set yrange [0:100]\n")
    gp.write("plot '"+sourcefile+"' u 1:2 w l lw 3 smooth bezier t 'Transmission',\\\n '' u 1:3 w l lw 3 smooth bezier t 'Reflection',\\\n '' u 1:4 w l lw 3 smooth bezier t 'Absorption'\n")
    gp.write("set output\n")
    gp.write("system 'open "+outfile+"'\n\n")
    
gp.close()
system('gnuplot Optical.gp')