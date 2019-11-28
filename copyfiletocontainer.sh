#!/bin/bash

docker cp $1 $(docker ps -q --filter ancestor=dotnethelloworld --format="{{.ID}}"):/app/wwwroot/ 
