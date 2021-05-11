#!/bin/bash

docker-compose up -d --build
git clone --recurse-submodules https://github.com/VictorMyschik/mymarket.git www/mymarket

