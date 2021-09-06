#!/bin/bash

cp docker-compose.example docker-compose.yml

sed -i "s/YOUR_PROJECT_NAME/$1/g" docker-compose.yml
sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml

sed -i "s/YOUR_PROJECT_DOMAIN.com/$2/g" docker-compose.yml