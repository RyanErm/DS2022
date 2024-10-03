#!/usr/bin/python3
#import needed libraries
import requests
import boto3
import sys
#start using aws
s3 = boto3.client('s3', region_name='us-east-1')
#get the url from the terminal environment
url = sys.argv[1]
#get the file
r = requests.get(url, allow_redirects=True)
#download the file
open('random_file.png', 'wb').write(r.content)

# vars needed
bucket_name = 'ds2022-jph4dg'
object_name = 'random_file.png'
expires_in = 604800
#put the object in your bucket
resp = s3.put_object(
	Body = object_name,
	Bucket = bucket_name,
	Key = object_name
)
#output a url for the image

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
)
#print out the url
print(response)
