https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xvzf lab3-bundle.tar.gz
cat lab3_data.tsv | tr -s '\n' > lab3_data.tsv
tr '\t' ',' < lab3_data.tsv > file.csv
awk 'NR > 1' file.csv | wc -l
tar -czvf converted-archive.tar.gz file.csv


