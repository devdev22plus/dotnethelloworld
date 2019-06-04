#!/bin/bash
#docker run -d -p 5000:80 dotnethelloworld \
docker run -d \
-v TestVol:/app/wwwroot \
-p 5000:80 \
dotnethelloworld
#--mount source=TestVol,target=/app
