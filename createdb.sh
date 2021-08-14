#!/bin/bash

UTIL_INFO="MARIADB INIT DATABASE GENERATOR \nAdd table name as this command argument."

if [ $# = 0 ]; then 

printf "$UTIL_INFO""\n"

else 

printf "\n"
printf "DROP DATABASE IF EXISTS "$1";""\n"
printf "CREATE DATABASE "$1";""\n"
printf "DROP USER IF EXISTS '"$1"'@'localhost';""\n"
printf "CREATE USER '"$1"'@'localhost' IDENTIFIED BY '"$1"';""\n"
printf "GRANT ALL ON "$1".* TO '"$1"'@'localhost';""\n"
printf "USE "$1";""\n\n"

fi

