#!/usr/bin/python3



import os
import json
import requests
#import all the libraries needed

GHUSER = os.getenv('GITHUB_USER')
#get the environment variable into this specific script

url = 'https://api.github.com/users/{0}/events'.format(GHUSER)
#get data from an externam source
r = json.loads(requests.get(url).text)
#print the first 5 events from this user on github
for x in r[:5]:
  event = x['type'] + ' :: ' + x['repo']['name']
  print(event)


