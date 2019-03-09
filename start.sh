#!/bin/bash
docker build -t 'elastic:1' .
docker run -d -p 9200:9200 -p 9300:9300 --name god-of-elastic elastic:1 

