#!/bin/bash

if [ "$1" == "" && "$2" == ""]; then
    echo "Missing PROJECT_NAME or PROJECT_DOMAIN.com"
fi

cp docker-compose.example docker-compose.yml

sed -i "s/YOUR_PROJECT_NAME/$1/g" docker-compose.yml
sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml

sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml