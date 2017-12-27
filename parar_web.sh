#!/bin/bash
clear
read -p "Nombre de la web: " proyecto
cd ~/www/${proyecto}/laradock
docker-compose stop nginx mysql 
cd ~/www
clear
