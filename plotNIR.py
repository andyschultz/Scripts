#!/usr/local/bin/python3

import sys,glob,linecache, argparse, pandas as pd, numpy as np
from os import system

# parser = argparse.ArgumentParser(description='Plot NIR with gas flow lookup')
# parser.add_argument('') Add one for gasflows, ymin, ymax

gasflows = "../gasflows.txt"

nir = glob.glob("*transmission0*.txt")

df = pd.read_csv(gasflows, skiprows=1,sep="\t", header=None, index_col=0, names = ['time','N2','O2','H2','CO','CO2','CH4'])

df['H2']=df['H2']/25
df['CO']=df['CO']/10

gp = open('plotall.gp','w')
gp.write('set terminal pngcairo enhanced fontscale 3 size 1800,1200 font "Helvetica,12"\n')
gp.write('set style fill solid 0.5\n')

print("Generating gnuplot script file.")

for file in nir:  
    try:
        datetime = linecache.getline(file,1)
        datetime = datetime.rstrip("\n").lstrip("#\t")
        row = df.loc[datetime]
        row = pd.DataFrame(row)
        
    except:
        row = {datetime:pd.Series([0.,0.,0.,0.,0.,0.],index = ['N2','O2','H2','CO','CO2','CH4'])}
        row = pd.DataFrame(row)
    
    output = file.rstrip('.txt')+'.png'
    
    H2 = np.around(row[datetime]['H2']+row[datetime]['CH4'],decimals=1)
    labelheight = str((H2/100 + 0.1))
    H2 = str(H2)
    
    gp.write('system "echo '+file+'"\n')
    gp.write('set output "'+output+'"\n')
    gp.write('set multiplot\n')
    gp.write('set origin 0,0\n')
    gp.write('set size 1,1\n')
    gp.write('set border 15\n')
    gp.write('set xlabel "Wavelength (nm)" font ",09" offset 0,0.5 \n')
    gp.write('set ylabel "Transmission (%)" font "Helvetica,09" offset 2.5,0\n')
    gp.write('set xtics font ",07" scale 0.5\n')
    gp.write('set ytics auto font ",07" in mirror scale 0.5\n')
    gp.write('set arrow from 1000,100 to 2600,100 nohead ls 180 lw 1\n')
    gp.write('set label "'+datetime+'" font ",07" at graph 0.8,0.05\n')
    gp.write('plot [1000:2600][40:140] "'+file+'" u ($1*1000000000):3 w l ls 4 notitle\n')
    gp.write('unset arrow\n')
    gp.write('unset label\n')
    gp.write('set origin 0.6,0.7\n')
    gp.write('set size 0.3,0.2\n')
    gp.write('set border 1\n')
    gp.write('unset ylabel\n')
    gp.write('unset xlabel\n')
    gp.write('unset xtics\n')
    gp.write('set boxwidth 0.9\n')
    gp.write('set yrange[0:100]\n')
    gp.write('set xrange[-0.15:0.4]\n')
    gp.write('set ytics nomirror font ",07" scale 0.5 0,50,100\n')
    gp.write('set label "H_2" font ",9" at graph 0.24,-0.18 center\n')   
    gp.write('set label "'+H2+'" font ",5" at graph 0.24,'+labelheight+' center\n')
    gp.write('set label "O_2" font ",9" at graph 0.70,-0.18\n')
    # gp.write('set logscale y\n')
    gp.write('plot "-" u 1 with histogram ls 3 notitle, "-" u 1 with histogram ls 2  notitle\n')
    gp.write(H2+'\n')
    gp.write('e\n')
    gp.write(str(row[datetime]['O2'])+'\n')
    gp.write('e\n')
    # gp.write('unset logscale y\n')
    gp.write('unset label\n')
    gp.write('unset multiplot\n')
    gp.write('set output\n')
    gp.write('\n')


gp.close()
system('gnuplot plotall.gp')
system('ffmpeg -f image2 -r 20 -i transmission%5d.png -vcodec libx264 out.mp4')
# system('rm *.png')