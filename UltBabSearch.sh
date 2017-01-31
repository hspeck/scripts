#! /bin/bash

tail -n +2 $1 | cut -f 1 |uniq > UltBabSearchHolderDoc.txt

while read ID 
	do printf "Individual: $ID: Times sampled: "	
	tail -n +2 $1| grep -wcE "^$ID"
done < UltBabSearchHolderDoc.txt
