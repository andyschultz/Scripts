#!/usr/local/bin/python3

# find peaks in XRD data, must be preformatted to change from CSV to TSV doc

import pandas as pd, numpy as np,glob,sys
from scipy import signal


# basefile = sys.argv[1]
filelist = glob.glob('*.txt')

def print_peaks(file):
    df = pd.read_csv(file,sep='\t',skiprows=27,header=None)
    data = df[1].values
    peakind = signal.find_peaks_cwt(data, np.arange(15,20))
    print(df.iloc[peakind])
    
for file in filelist:
    print("\n\n"+file+":\n")
    print_peaks(file)

    