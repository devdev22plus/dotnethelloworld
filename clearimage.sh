#!/bin/bash

#docker rmi $(docker images -qf "dangling=true")
#docker rmi $(docker images)

#echo $(docker images -qf "dangling=true")

docker rmi -f dotnethelloworld

docker rmi -f $(docker images -qf "dangling=true")

if [ $1 ] && [ $1 == 'all' ]
then
	docker rmi -f $(docker images)
fi
