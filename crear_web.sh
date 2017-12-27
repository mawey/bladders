#!/bin/bash
clear
read -p "Nombre de la web: " proyecto
cd ~
cd www
composer create-project laravel/laravel $proyecto --prefer-dist
cd $proyecto
clear
git clone https://github.com/Laradock/laradock.git
cd laradock
cp env-example .env
docker-compose up -d nginx mysql 
cd ..
sed -i 's/DB_HOST=127.0.0.1/DB_HOST=mysql/g' ".env"
sed -i "s/APP_NAME=Laravel/APP_NAME=${proyecto}/g" ".env"
sed -i "s/Laravel/${proyecto}/g" "./resources/views/welcome.blade.php"
clear
code . -d
