#!/bin/bash
# This is the primary script for a project setuo for BioInformatics Homework 2
# This script will summarize  a set of Fasta files
# Katelyn Kukar kbkukar@usfca.edu
# September 17th, 2017

echo "unzipping all zipped data files"
cd data
unzip \*.zip
cd ../
echo "all done!"

echo "This is a log file that was run on..."
date

for file in $*.fasta
do
	echo "This is a log file named $file"
	echo
	echo "File size:"
	ls -lah *.fasta |awk '{ print $5}'
	echo "This file $file reads in the first three lines: $(Head -3 $*.fasta)"
	Head -3 $file
	echo "This file $file reads in the last three lines $(Tail -3 $*.fasta)"
	echo "This file $*.fasta  has $(grep -c ">" $file) number or sequences"
	echo 
