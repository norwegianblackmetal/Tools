#!/bin/bash
docker stop god-of-elastic
docker rm god-of-elastic
docker image rm -f elastic:1
