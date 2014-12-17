#!/usr/local/bin/python3

# Takes as arguments the data file and desired wavelengths. 
# Returns the appropriate column index for plotting with gnuplot

import numpy as np,sys,pandas as pd

file = sys.argv[1]

with open(file, 'r') as f:
  array = pd.Series(f.readline().split()) # Create a pandas series using the first row of the processed data file
  array = array.convert_objects(convert_numeric=True)
        

def find_nearest(array,value):
    ''
    idx = (np.abs(array-value)).argmin()
    return idx
    

for item in sys.argv[2:len(sys.argv)]:
    value = int(item)
    print(item+": "+str(find_nearest(array,value)))  # No changes needed because of #, Time, Elapsed, Time
    
