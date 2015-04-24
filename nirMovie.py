#!/usr/local/bin/python3


# Make sure sourcefile, gasdata, output video file, and iterator are to your liking.
# Requires Python3 (including Pandas and Numpy), gnuplot, HandBreak command line tools, FFmpeg
# Optimized for data from System 2, as of March 10, 2015.
# Plotting relies on gnuplot cfg and palette files
# Run 'processGas.py' and 'findOutliers.py' prior to running this script for proper formatting of data files.
# To run: 'python3 nirMovie.py' 
#
#=================================================================
# EDIT THESE LINES AS DESIRED
#=================================================================
sourcefile = "nir.txt"
gasdata = "gasflows.txt"
movieout = "movie.mp4"
iterator = 10 #Interval between readings to add to movie
#=================================================================


import pandas as pd, glob, numpy as np
from os import system


gasflows= pd.read_csv(gasdata, skiprows=1,sep="\t", header=None, index_col=0, names = ['time','N2','O2','H2','CO','CO2','CH4'])

# gasflows['H2']=gasflows['H2']/25
# gasflows['CO']=gasflows['CO']/10

df = pd.read_csv(sourcefile, sep='\t', header=0,parse_dates=0)

df.pop("Elapsed")

plotting = df.transpose()

columns = plotting.shape[1]

plotting.to_csv("tempForPlotting.txt",sep='\t')



gp = open("temp.gp",'w')
gp.write("set terminal pngcairo \n")
# gp.write("@colorlist\n")
gp.write('set style fill solid 0.5\n')




number = str(int(columns/iterator))
i=0 # Used to pick which lines to plot
j=1 # Used for file naming
while i<columns:
    datetime = str(df.iloc[i][0])
    try:
        row = gasflows.loc[datetime]
        row = pd.DataFrame(row)
    except:
        row = {datetime:pd.Series([0.,0.,0.,0.,0.,0.],index = ['N2','O2','H2','CO','CO2','CH4'])}
        row = pd.DataFrame(row)
    O2 = np.around(row[datetime]['O2'],decimals=0)
    O2labelheight = str((O2/100 + 0.05))
    O2 = "%d" % O2
    H2 = np.around(row[datetime]['H2'],decimals=0)
    H2labelheight = str((H2/100 + 0.05))
    H2 = "%d" % H2
    CO = np.around(row[datetime]['CO'],decimals=0)
    COlabelheight = str((CO/100 + 0.05))
    CO = "%d" % CO
    CO2 = np.around(row[datetime]['CO2'],decimals=0)
    CO2labelheight = str((CO2/100 + 0.05))
    CO2 = "%d" % CO2
    CH4 = np.around(row[datetime]['CH4'],decimals=0)
    CH4labelheight = str((CH4/100 + 0.05))
    CH4 = "%d" % CH4
    
    
    gp.write("print '"+str(j)+" of "+number+"'\n")
    gp.write("set output '"+'{:05d}'.format(j)+".png'\n")
    gp.write('set multiplot\n')
    gp.write('set origin 0,0\n')
    gp.write('set size 1,1\n')
    gp.write('set border 15\n')
    gp.write('set xtics auto\n')
    gp.write('set ytics auto\n')
    gp.write("set yrange [0:160]\n")
    gp.write("set xrange [1200:2600]\n")
    gp.write('set label "'+datetime+'" font ",09" at graph 0.7,0.05\n')
    gp.write("plot 'tempForPlotting.txt' u 1:"+str(i+2)+" w l lw 2 smooth csplines notitle\n")
    gp.write('unset label\n')
    gp.write('set origin 0.55,0.64\n')
    gp.write('set size 0.4,0.3\n')
    gp.write('set border 3\n')
    gp.write('unset ylabel\n')
    gp.write('unset xlabel\n')
    gp.write('unset xtics\n')
    gp.write('set boxwidth 0.9\n')
    gp.write('set yrange[0:100]\n')
    gp.write('set xrange[-0.3:0.45]\n')
    gp.write('set ytics nomirror  scale 0.5 0,50,100\n')
    gp.write('set label "O_2" font ",10" at graph 0.12,-0.12 center\n')
    gp.write('set label "'+O2+'" font ",09" at graph 0.12,'+O2labelheight+' center\n')
    gp.write('set label "H_2"  font ",10" at graph 0.3,-0.12 center\n')   
    gp.write('set label "'+H2+'" font ",09" at graph 0.3,'+H2labelheight+' center\n')
    gp.write('set label "CO"  font ",10" at graph 0.5,-0.12 center\n')   
    gp.write('set label "'+CO+'" font ",09" at graph 0.5,'+COlabelheight+' center\n')
    gp.write('set label "CO_2"  font ",10" at graph 0.69,-0.12 center\n')   
    gp.write('set label "'+CO2+'" font ",09" at graph 0.69,'+CO2labelheight+' center\n')
    gp.write('set label "CH_4"  font ",10" at graph 0.88,-0.12 center\n')   
    gp.write('set label "'+CH4+'" font ",09" at graph 0.88,'+CH4labelheight+' center\n')
    # gp.write('set logscale y\n')
    gp.write('plot "-" u 1 with histogram ls 2 notitle, "-" u 1 with histogram ls 3  notitle, "-" u 1 with histogram ls 4  notitle, "-" u 1 with histogram ls 5  notitle, "-" u 1 with histogram ls 6  notitle\n')
    gp.write(O2+'\n')
    gp.write('e\n')
    gp.write(H2+'\n')
    gp.write('e\n')
    gp.write(CO+'\n')
    gp.write('e\n')
    gp.write(CO2+'\n')
    gp.write('e\n')
    gp.write(CH4+'\n')
    gp.write('e\n')
    # gp.write('unset logscale y\n')
    gp.write('unset label\n')
    gp.write('unset multiplot\n')
    gp.write("unset output\n")

    j+=1
    i+=iterator
    
gp.close()

system("gnuplot temp.gp")
system('ffmpeg -f image2 -r 30 -i %5d.png -vcodec libx264 -y temp.mp4')
system('HandBrakeCLI -i temp.mp4 -o '+movieout+' --preset="Normal"')
system("rm *.png && rm temp*")