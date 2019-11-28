#!/bin/bash


#build dotnet
dotnet publish -c Release


#COPY Dockerfile
cp Dockerfile ./bin/release/netcoreapp2.2/publish/Dockerfile


#Docker clear old image
docker rmi dotnethelloworld
#docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
#image none clear
docker rmi $(docker images -qf "dangling=true")
docker rmi $(docker images | grep "dotnethellowlrd")

#docker
docker build -t dotnethelloworld -f Dockerfile.arm32 ./bin/release/netcoreapp2.2/publish
