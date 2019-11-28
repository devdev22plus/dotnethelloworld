#!/bin/bash
docker cp $(docker ps -q --filter ancestor=dotnethelloworld --format="{{.ID}}"):/app/wwwroot . 
