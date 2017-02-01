#! /bin/bash

Individuals=$(tail -n +2 $1 | cut -f 1 | sort -n|uniq)

for ID in $Individuals
	do printf "Individual: $ID: Times sampled: "	
	tail -n +2 $1| grep -wcE "^$ID"
done
