set term png size 2400,1800 fontscale 4.0 font "Charter, 10" transparent
set output "transmission00000.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00000.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,3p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00188.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00188.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,4p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00189.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00189.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,5p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00190.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00190.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,6p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00191.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00191.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,7p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00192.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00192.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,8p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00193.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00193.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,9p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00194.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00194.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,10p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00195.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00195.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,11p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00196.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00196.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,12p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00197.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00197.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,13p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00198.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00198.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,14p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00199.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00199.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,15p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00200.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00200.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,16p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00201.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00201.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,17p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00202.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00202.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,18p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00203.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00203.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,19p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00204.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00204.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,20p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00205.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00205.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,21p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00206.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00206.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,22p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00207.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00207.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,23p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00208.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00208.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,24p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00209.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00209.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,25p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00210.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00210.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,26p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00211.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00211.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,27p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00212.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00212.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,28p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00213.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00213.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,29p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00214.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00214.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,30p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00215.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00215.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,31p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00216.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00216.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,32p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00217.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00217.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,33p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00218.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00218.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,34p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00219.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00219.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,35p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00220.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00220.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,36p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00221.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00221.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,37p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00222.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00222.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,38p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00223.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00223.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,39p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00224.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00224.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,40p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00225.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00225.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,41p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00226.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00226.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,42p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00227.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00227.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,43p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00228.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00228.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,44p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00229.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00229.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,45p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00230.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00230.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,46p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00231.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00231.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,47p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00232.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00232.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,48p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00233.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00233.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,49p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00234.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00234.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,50p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00235.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00235.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,51p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00236.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00236.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,52p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00237.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00237.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,53p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00238.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00238.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,54p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00239.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00239.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,55p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00240.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00240.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,56p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00241.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00241.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,57p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00242.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00242.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,58p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00243.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00243.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,59p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00244.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00244.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,60p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00245.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00245.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,61p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00246.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00246.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,62p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00247.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00247.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,63p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00248.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00248.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,64p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00249.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00249.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,65p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00250.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00250.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,66p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00251.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00251.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,67p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00252.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00252.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,68p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00253.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00253.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,69p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00254.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00254.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,70p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00255.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00255.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,71p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00256.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00256.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,72p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00257.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00257.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,73p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00258.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00258.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,74p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00259.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00259.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,75p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00260.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00260.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,76p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00261.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00261.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,77p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00262.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00262.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,78p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00263.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00263.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,79p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00264.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00264.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,80p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00265.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00265.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,81p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00266.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00266.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,82p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00267.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00267.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,83p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00268.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00268.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,84p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00269.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00269.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,85p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00270.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00270.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,86p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00271.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00271.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,87p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00272.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00272.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,88p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00273.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00273.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,89p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00274.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00274.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,90p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00275.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00275.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,91p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00276.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00276.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,92p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00277.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00277.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,93p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00278.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00278.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,94p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00279.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00279.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,95p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00280.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00280.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,96p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00281.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00281.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,97p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00282.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00282.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,98p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00283.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00283.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,99p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00284.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00284.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,100p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00285.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00285.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,101p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00286.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00286.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,102p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00287.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00287.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,103p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00288.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00288.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,104p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00289.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00289.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,105p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00290.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00290.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,106p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00291.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00291.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,107p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00292.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00292.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,108p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00293.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00293.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,109p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00294.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00294.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,110p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00295.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00295.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,111p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00296.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00296.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,112p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00297.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00297.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,113p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00298.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00298.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,114p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00299.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00299.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,115p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00300.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00300.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,116p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00301.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00301.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,117p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00302.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00302.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,118p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00303.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00303.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,119p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00304.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00304.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,120p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00305.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00305.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,121p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00306.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00306.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,122p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00307.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00307.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,123p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00308.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00308.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,124p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00309.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00309.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,125p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00310.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00310.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,126p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00311.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00311.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,127p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00312.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00312.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,128p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00313.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00313.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,129p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00314.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00314.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,130p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00315.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00315.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,131p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00316.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00316.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,132p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00317.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00317.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,133p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00318.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00318.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,134p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00319.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00319.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,135p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00320.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00320.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,136p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00321.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00321.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,137p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00322.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00322.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,138p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00323.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00323.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,139p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00324.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00324.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,140p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00325.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00325.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,141p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00326.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00326.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,142p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00327.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00327.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,143p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00328.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00328.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,144p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00329.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00329.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,145p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00330.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00330.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,146p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00331.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00331.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,147p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00332.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00332.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,148p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00333.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00333.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,149p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00334.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00334.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,150p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00335.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00335.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,151p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00336.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00336.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,152p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00337.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00337.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,153p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00338.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00338.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,154p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00339.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00339.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,155p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00340.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00340.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,156p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00341.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00341.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,157p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00342.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00342.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,158p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00343.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00343.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,159p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00344.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00344.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,160p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00345.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00345.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,161p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00346.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00346.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,162p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00347.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00347.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,163p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00348.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00348.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,164p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00349.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00349.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,165p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00350.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00350.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,166p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00351.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00351.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,167p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00352.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00352.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,168p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00353.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00353.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,169p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00354.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00354.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,170p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00355.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00355.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,171p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00356.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00356.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,172p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00357.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00357.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,173p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00358.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00358.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,174p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00359.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00359.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,175p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00360.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00360.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,176p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00361.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00361.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,177p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00362.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00362.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,178p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00363.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00363.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,179p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00364.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00364.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,180p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00365.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00365.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,181p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00366.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00366.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,182p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00367.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00367.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,183p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00368.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00368.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,184p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00369.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00369.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,185p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00370.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00370.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,186p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00371.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00371.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,187p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00372.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00372.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,188p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00373.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00373.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,189p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00374.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00374.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,190p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00375.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00375.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,191p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00376.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00376.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,192p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00377.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00377.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,193p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00378.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00378.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,194p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00379.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00379.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,195p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00380.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00380.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,196p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00381.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00381.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,197p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00382.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00382.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,198p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00383.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00383.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,199p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00384.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00384.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,200p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00385.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00385.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,201p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00386.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00386.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,202p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00387.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00387.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,203p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00388.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00388.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,204p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00389.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00389.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,205p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00390.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00390.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,206p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00391.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00391.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,207p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00392.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00392.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,208p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00393.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00393.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,209p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00394.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00394.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,210p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00395.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00395.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,211p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00396.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00396.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,212p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00397.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00397.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,213p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00398.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00398.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,214p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00399.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00399.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,215p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00400.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00400.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,216p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00401.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00401.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,217p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
set output "transmission00402.png"
set multiplot layout 2,1
unset key
set xrange [900:2600]
set yrange [0.5:1.5]
set y2range [0.0:10]
plot "transmission00402.txt" u ($1*1000000000):3 w l lc rgb "#FFFFFF" lw 3 
set autoscale x
plot for [i=6:12] "<sed -n '3,218p' test.txt" u ($3):i w l,'' u ($3):4 w l axes x1y2, '' u ($3):5 w l axes x1y2
unset multiplot
unset output
