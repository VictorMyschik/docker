#!/bin/bash

# Создание обратного прокси
cd docker/proxy
docker-compose up -d
cd ../../

# Клонирование репозитория
git clone --recurse-submodules https://github.com/VictorMyschik/mymarket.git www/mymarket

# Копирование файйла настроек для Laravel
cp www/.env www/mymarket/

# Создание контейнеров
docker-compose up -d --build
