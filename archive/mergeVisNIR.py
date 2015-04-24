visfile = "vis-compiled.txt"
nirfile = "nir.txt"


# make sure the headers are formatted correctly at this step
vis = pd.read_csv(visfile,sep="\t")


list = merged.columns.values
list = np.float64(list)
merged.columns=list
merged = merged.sort_index(axis=1)

merged.reset_index(level=0, inplace=True)