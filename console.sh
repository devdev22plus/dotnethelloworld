#!/bin/bash
docker exec -t -i $(docker ps -q --filter ancestor=dotnethelloworld --format="{{.ID}}") /bin/bash
