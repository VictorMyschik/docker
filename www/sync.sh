#!/bin/bash

# git clone --recurse-submodules https://github.com/VictorMyschik/mymarket.git

cd mymarket

# Установка прав на запись для папки с логами и загруженными файлами
chmod -R 777 storage/

# Установка/обновление зависимостей Laravel
composer update

# Обновление NMP модулей
npm install

# Перекомпилирование frontend (CSS, SASS, JS)
npm run dev

# Прочистка конфигов Laravel
php artisan config:clear
php artisan cache:clear
php artisan view:clear
composer dump-autoload --optimize

# Пересоздание БД


