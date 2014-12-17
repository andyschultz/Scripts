#!/usr/local/bin/python3

from os import system
from glob import glob

filelist = glob("*.txt")

for file in filelist:
    basefile = file.rstrip(".txt")
    gp = open(basefile+".gp",'w')
    gp.write("@pdf 4in,3in\n")
    gp.write("set output \'"+basefile+".pdf\'\n")
    gp.write("set termoption font \"Caecilia LT Std\"\n")
    gp.write("set key right center\n")
    gp.write("set ylabel \"T/R/A (%)\" font \"Caecilia LT Std:Bold\" offset 2\n")
    gp.write("set xlabel \"Wavelength (nm)\" font \"Caecilia LT Std:Bold\"\n")
    gp.write("set xrange [100:1500]\n")
    gp.write("set yrange [-10:100]\n")
    gp.write("plot \'"+file+"\' u 1:2 w l lw 3 smooth bezier t \"Transmission\",\\\n")
    gp.write("\'\' u 1:3 w l lw 3 smooth bezier t \"Reflection\",\\\n")
    gp.write("\'\' u 1:4 w l lw 3 smooth bezier t \"Absorption\"\n")
    gp.write("unset output\n")
    gp.write("system \"open "+basefile+".pdf\"")
    gp.close()
    system('gnuplot '+basefile+'.gp')