#!/usr/local/bin/python3

import pandas as pd, sys, os.path

def invalidaterow(x,y):
    df.iloc[x,0] = '# Invalid reading for '+", ".join(y)

def checkpositives(row,badlist):
    positives = ['V2','V4','V6','V8']
    for x in positives:
        if df[x][row]<0: 
            badlist.append(x)

def checknegatives(row,badlist):
    negatives = ['V1','V3','V5','V7']
    for x in negatives:
        if df[x][row]>0: 
            badlist.append(x)

def checkresistances(row,badlist):
    Ra = df['Resistance A'][row]
    Rb = df['Resistance  B'][row]
    Ravg = df['Average Sheet Resistance'][row]
    if (Ra*Rb)/Ravg < 0.998:
        badlist.append("Ravg")

def loadfile(source="resistivity.txt"):
    global file
    if os.path.isfile(source):
        file = source
    else:
        file = input('Path to file:\n')


loadfile()

df = pd.read_csv(file, sep='\t')

for i in range(0,df.shape[0]):
    bad = []
    checkpositives(i,bad)
    checknegatives(i,bad)
    bad = sorted(bad)
    checkresistances(i,bad)
    if bad != []:
        invalidaterow(i,bad)

df.to_csv(file.rstrip(".txt")+"-processed.txt",sep='\t',index=False)

