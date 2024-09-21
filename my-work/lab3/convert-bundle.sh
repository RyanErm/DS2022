#!/bin/bash

#import the data from online
wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
#unzip the tarball
tar -xvzf lab3-bundle.tar.gz
#get rid of any empty spaces
cat lab3_data.tsv | tr -s '\n' > lab3_data.tsv
#turn the tsv into a csv
tr '\t' ',' < lab3_data.tsv > file.csv
#count all of the lines of text except the first one
awk 'NR > 1' file.csv | wc -l
#zip up the new csv file into a new tarball
tar -czvf converted-archive.tar.gz file.csv


