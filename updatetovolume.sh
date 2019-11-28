#!/bin/bash

docker exec -t -i $(docker ps -q --filter ancestor=dotnethelloworld --format="{{.ID}}") /bin/bash -c 'cd wwwroot;rm -rf *'

sh ./copyfiletocontainer.sh ./wwwroot/*
sh ./copyfiletocontainer.sh ./wwwroot/*.*

