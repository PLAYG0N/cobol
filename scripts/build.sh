#!/bin/bash

echo Compiling: $1 
echo

# echo $2
# echo $3

infile=$1
outfolder=$2
outfile=$3

mkdir -p ${outfolder}

cobc -x $infile -fixed -o $outfolder/$outfile -I src/copybooks