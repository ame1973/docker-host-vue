#!/bin/bash

if [ -z "$1" ]
then
    echo "Please input PROJECT_NAME arguments!"
    exit
fi

if [ -z "$2" ]
then
    echo "Please input PROJECT_DOMAIN arguments!"
    exit
fi

cp docker-compose.example docker-compose.yml

sed -i "s/YOUR_PROJECT_NAME/$1/g" docker-compose.yml
sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml

sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml