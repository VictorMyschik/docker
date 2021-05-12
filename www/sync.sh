#!/bin/bash

# Установка прав на запись для папки с логами и загруженными файлами
#chmod -R 777 storage/
# Копирование настроек в mymarket
#cp .env mymarket/
#cp .sync mymarket/
#
## Установка/обновление зависимостей Laravel
#composer update
#
## Обновление NMP модулей
#npm install
#
## Перекомпилирование frontend (CSS, SASS, JS)
#npm run dev
#
## Прочистка конфигов Laravel
#php artisan config:clear
#php artisan cache:clear
#php artisan view:clear
#composer dump-autoload --optimize


php artisan migrate
