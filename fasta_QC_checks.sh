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
	echo "This is a log file named $*.fasta"
	echo "This file $*.fasta is $(ls -la $*.fasta) large"
	echo "This file $*.fasta reads in the last three lines $(Head -3 $*.fasta)"
	echo "This file $*.fasta reads in the last three lines $(Tail -3 $*.fasta)"
	echo "This file $*.fasta  has $(grep -c ">" $file) number or sequences"
	echo 
