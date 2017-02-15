#! /bin/bash

cat $1 | tr "\r" "\n" > formatted_$1
