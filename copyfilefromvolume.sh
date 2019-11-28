#!/bin/bash
docker cp $(docker ps -q --filter ancestor=TestVol --format="{{.ID}}"):/app/wwwroot . 
