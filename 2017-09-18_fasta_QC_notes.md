# This is an R Markdown file to record HW 2 progress for BioInformatics
# Professor Naupaka Zimmerman
# Date of Assignment 2017-09-15 to 2017-09-20

# Project Owner: Katelyn Kukar
# Email: kbkukar@usfca.edu
# University of San Francisco
# 2017-09-19

## Project Overview:
### Create a script which processes multiple fasta files within a loop to record basic output

## Project Notes/Inferences:
### The output created by the fasta_QC_checks script yielded results for multiple types of fasta files. 
### The size of the H1N1 related fasta files seems synonymous with the amount of identifiers and number of sequences. This could potentially be because all of the files share the same sample regions and could be related for statistical analyses.
### However, there are smaller sized mRNA labeled files that have more descriptive identifier sequences and fewer sequence amounts overall. This could potentially be because these files are meant to be analyzed individually and contain highly specific, targeted data.
### The difference between the H1N1 files and the smaller mRNA files is specifically seen within the relative n values for sample size. This potentially could be because the data for H1N1 files comes from regions around the globe, where the fasta files pertaining to plants/crabs/invertebrates could be based locally or in more specific niches.

## Data Questions/Concerns:
### A file of particular interest is the invertebrates fasta file since the file include a quotation questioning the animal types the sequences of the file pertains to. This file also specfically is named "invertebrates," however contains seqeunce identifiers that pertain to mammals. Potentially, the data file was overwritten at some point in the past and needs to be re-copied from the origin.
### The FastaSeqCl fasta file is also of interest since we do not have any key to deduce what the identifiers pertain to. If we are unable to establish the naming conventions for the data we can not appropriately run any analyses.

## Future Goals:
### Check all of the data sets for updates or corrections
### Rerun scripts
### Learn to process sequences correctly
### Learn to correctly parse information from fasta files
