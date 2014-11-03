#!/usr/local/bin/python3

# Processes tranmission#####.txt files generated by ArcOptix NIR automation VI.
# normal_file is the file used for baseline (typically transmission00000.txt)
# Normalized data added as third column (initial data not overwritten)

import glob,os,sys,pandas as pd,numpy as np

normal_file = 'nir-transmission01770.txt'

initial = pd.read_csv(normal_file,delimiter='\t',skiprows=1,header=None)

filelist = glob.glob('*.txt')

for row in filelist:
    print(row)
    with open(row,'r') as f:
        first_line = f.readline()
    working = pd.read_csv(row,delimiter='\t',skiprows=1,header=None)
    working[3]=(working[2]/initial[2])*100
    working.to_csv(row,na_rep='NaN',sep='\t',header=False,index=False)
    with open(row,'r+') as f:
        s = f.read()
        f.seek(0)
        f.write(first_line + s)
