#!/bin/bash

#retrieve the filr from the internet
curl $1 > tempfile.png
#copy the file into the bucket
aws s3 cp tempfile.png s3://ds2022-jph4dg/
#print out the url of the public file that is now in your bucket
aws s3 presign --expires-in 604800 s3://ds2022-jph4dg/tempfile.png
