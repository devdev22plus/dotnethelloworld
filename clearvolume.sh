#!/bin/bash

if [ $1 ] && [ $1 == "force" ]
then
    sh ./forcestopanddestroyall.sh
fi

docker volume rm TestVol

