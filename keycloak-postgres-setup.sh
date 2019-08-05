#!/bin/bash

docker-compose up -d

echo Connect to the docker container:
echo " "
echo docker exec -it postgres /bin/sh
echo " "
echo and then execute:
echo " "
echo psql -U keycloak -d keycloak
echo " " 
echo turn ssl requirements off:
echo " "
echo update realm set ssl_required='NONE';
echo " "
echo restart keycloak
echo " " 
echo docker stop keycloak
echo docker start keycloak
