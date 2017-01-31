#! /bin/bash

for file in ~/Desktop/eeb-177/CSB/unix/data/Saavedra2013/*.txt
	do printf "$file ";
	cat $file | wc -l;
	head -n +1 $file |grep -oE "[01] "| wc -l
	done
