#!/bin/bash

docker cp $1 $(docker ps -q --filter ancestor=TestVol --format="{{.ID}}"):/app/ 
