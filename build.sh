#!/bin/sh
cd ./JIRA
docker build -t aladdinding/jira .
cd ..
cd ./Confluence
docker build -t aladdinding/confluence .
cd ..
cd ./MYSQL
docker build -t aladdinding/mysql:5.7 .
docker-compose up -d