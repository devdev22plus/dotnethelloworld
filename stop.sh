#!/bin/bash

#docker kill $(docker ps -a -q --filter ancestor=dotnethelloworld --format="{{.ID}}")
docker stop $(docker ps -a -q --filter ancestor=dotnethelloworld --format="{{.ID}}")
