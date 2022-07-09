#!/bin/bash

# Остановить текущий контейнер
docker-compose down

cd docker/proxy || exit
# Переустановить сеть
docker-compose down
docker-compose up -d
cd ../../

#docker-compose down && docker-compose build --no-cache
docker-compose up -d --build