#!/usr/local/bin/python3

import sys,glob,linecache, argparse, pandas as pd, numpy as np
from os import system

def find_nearest(array,value):
    idx = (np.abs(array-value)).argmin()
    return idx

gasflows = "gasflows.txt"

# basefile = sys.argv[1]
basefile = "nir-transmission"

filelist = glob.glob(basefile+"*[0-9]*")

df = pd.read_csv(gasflows, skiprows=1,sep="\t", header=None, index_col=0, names = ['time','cumetime','N2','O2','H2','CO','CO2','CH4'])

for file in filelist:
    datetime = linecache.getline(file,1)
    datetime = datetime.rstrip("\n").lstrip("#\t").replace("/","-") # Read the first line for timestamp, format correctly
    
    


