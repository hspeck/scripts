#! /bin/bash

printf "Filename : $1
"
printf "Number of Rows: "
cat $1| wc -l
printf "Number of Columns: "
head -n +1 $1 | grep -oE "[01] " | wc -l
