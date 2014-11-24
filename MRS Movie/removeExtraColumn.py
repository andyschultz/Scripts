#code snippet to undo results of earlier processing


for file in filelist:
    datetime = linecache.getline(file,1)
    df = pd.read_csv(file,sep='\t',skiprows=1,header=None)
    df.pop(3)
    df.to_csv(file,na_rep='NaN',sep='\t',header=False,index=False)
    with open(file,'r+') as f:
        s = f.read()
        f.seek(0)
        f.write(datetime + s)
