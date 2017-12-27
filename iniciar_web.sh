#!/bin/bash
clear
read -p "Nombre de la web: " proyecto
cd ~/www/${proyecto}/laradock
docker-compose up -d nginx mysql 
cd ..
clear
code . -d
