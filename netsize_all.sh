#! /bin/bash

for file in ~/Desktop/eeb-177/CSB/unix/data/Saavedra2013/*.txt
do 
	row=$(cat $file | wc -l)
	column=$(head -n +1 $file |grep -oE "[01] "| wc -l)
	printf "$file $row $column \n"	
done
