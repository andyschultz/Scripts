#!/bin/sh

# write a gnuplot script
rm temp.gp

echo '# Temp gnuplot script' >> temp.gp
echo 'set terminal pngcairo fontscale 3 size 1800,1200 font "Avenir Next,12"' >> temp.gp
echo 'set border 15' >> temp.gp
echo 'set xtics in mirror' >> temp.gp
echo 'set ytics in mirror' >> temp.gp

# iterate over .txt files
for i in *.txt
do
    # create appropriate name for resulting image
    filename=`echo $i | sed 's/txt/png/'`
    
    # add seperate plots for each file
    echo "set output '$filename'" >> temp.gp
    echo "print '$filename'" >> temp.gp
    echo "plot [1000:2500][50:140] '$i' u (\$1*1000000000):3 w l ls 4 title '$filename'" >> temp.gp
    echo "set output" >> temp.gp
done

# call gnuplot
# gnuplot temp.gp

# delete temporary file
# rm temp.gp

# create animated gif
# ffmpeg -f image2 -r 15 -i transmission%5d.png -vcodec libx264 out.mp4
