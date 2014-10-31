import pandas as pd
import numpy as np

tfile = '115T.csv'
rfile = '115R.csv'

dfs = []

# read the tfile csv and append to dfs

df = pd.read_csv(tfile)
df.columns = ['nm','T']
dfs.append(df)


# def smoothGaussian(list,strippedXs=False,degree=5):
#     window=degree*2-1
#     weight=np.array([1.0]*window)
#     weightGauss=[]
#     for i in range(window):
#         i=i-degree+1
#         frac=i/float(window)
#         gauss=1/(np.exp((4*(frac))**2))
#         weightGauss.append(gauss)
#     weight=np.array(weightGauss)*weight
#     smoothed=[0.0]*(len(list)-window)
#     for i in range(len(smoothed)):
#         smoothed[i]=sum(np.array(list[i:i+window])*weight)/sum(weight)
#     return smoothed
#         
# 
# 
# def local_minima(xval,yval):
#     xval = np.asarray(xval)
#     yval = np.asarray(yval)
#     gradient = np.diff(yval)
#     minima = np.diff((gradient < 0).view(np.int8))
#     return np.concatenate((([0],) if gradient[0] < 0 else ()) +
#         (np.where(minima == -1)[0] + 1,) +
#         (([len(yval)-1],) if gradient[-1] >0 else()))


# read second column of rfile csv, give unique column id, and append

df = pd.read_csv(rfile)
df.columns = ['nm2','R']

dfs.append(df)


dfs = pd.concat(dfs,axis=1)
dfs = dfs.drop('nm2',1)
       
dfs['A']=100-dfs['T']-dfs['R'] 
csv = dfs
csv['nm'].apply(str)


csv.to_csv("mergedoptical.csv", index=None, sep='\t', float_format='%11.6f')