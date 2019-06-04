#!/bin/bash
docker build -t dotnethelloworld -f Dockerfile.arm32 ./bin/release/netcoreapp2.2/publish
