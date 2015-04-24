#!/usr/local/bin/python3


# ===========================================================================
# Merges output from SpectraSuite (as tab delimited spectra) and merge to a 
# single file, formatted similarly to that from ARCoptix Control VI.
# ===========================================================================

# ===========================================================================
# USER VARIABLES: Edit as appropriate
# ===========================================================================
basefile = "uvvis"
# ===========================================================================


import pandas as pd, numpy as np, 
from glob import glob
from datetime import datetime


filelist = glob(basefile+"*.txt")

for file in filelist:
    date = linecache.getline(file,3)
    date = date.lstrip("Date: ")
    date = date.rstrip("\n")
    date = date.split()
    date.pop(4)
    date.pop(0)
    date = " ".join(date)
    date = datetime.strptime(date, "%b %d %H:%M:%S %Y")
    date = datetime.strftime(date,'%Y-%m-%d %X')
    