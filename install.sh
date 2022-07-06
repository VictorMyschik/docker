#!/bin/bash

# Создание обратного прокси
# shellcheck disable=SC2164
# Остановить текущий контейнер
docker-compose down

cd docker/proxy
# Переустановить сеть
docker-compose down
docker-compose up -d
cd ../../

#docker-compose down && docker-compose build --no-cache
docker-compose up -d --build

rm -rf www/mymarket
git clone --recurse-submodules git@github.com:VictorMyschik/mymarket.git www/mymarket

# Копирование файла настроек для Laravel
cp www/.env www/mymarket/

sudo grep -qxF '127.0.0.1 mymarket.test' /etc/hosts || echo '127.0.0.1 mymarket.test' | sudo tee -a /etc/hosts
