#!/bin/bash

if [ -z "$1" ]
then
    echo "[ERROR] Please input PROJECT_NAME arguments!"
    exit
fi

if [ -z "$2" ]
then
    echo "[ERROR] Please input PROJECT_DOMAIN arguments!"
    exit
fi

DIR="./src/"
if [ -d "$DIR" ]; then
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "[ERROR] ${DIR} not found. Can not continue."
  exit 1
fi

cp docker-compose.example docker-compose.yml

sed -i "s/YOUR_PROJECT_NAME/$1/g" docker-compose.yml
sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml

sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml