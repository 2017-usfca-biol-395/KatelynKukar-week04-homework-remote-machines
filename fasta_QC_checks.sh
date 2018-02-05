#!/bin/bash
# This is the primary script for a project setuo for BioInformatics Homework 2
# This script will summarize  a set of Fasta files
# Katelyn Kukar kbkukar@usfca.edu
# September 17th, 2017

echo "Output from preliminary quality control checks on selected fasta file"
date

# Unzip primary files copied from data folder
echo "unzipping all zipped data files"
cd data
unzip \*.zip
cd ../
echo "all done!"

# Begin output for loop coding
echo
echo "Beginning of output for selected files"

for file in $@
do
	# Name the file of interest for the loop
	echo "This is output information for  a log file named:"
	echo $file

	echo
	# Extrapolate the file size only
	echo "File size:"
	ls -lah $file |awk '{ print $5}'
	echo
	# List the first three lines of the file
	echo "This file reads in the first three lines:"
	head -3 $file
	echo 
	# List the last three lines of the file
	echo "This file reads in the last three lines:"
	tail -3 $file
	echo
	# Count the number of sequences within each data file
	echo "This file has $(grep -c ">" $file) sequences"
	echo 
	# List sequence identifiers alphabetically
	echo "The sequence identifiers are:"
	grep -e ">" $file |sort -g
done

echo "output completed"
