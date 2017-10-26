#!/bin/bash
docker-compose up --build --force-recreate -d

until [ "`docker inspect -f {{.State.Running}} backendtest_web_1`"=="true" ] &&
  [ "`docker inspect -f {{.State.Running}} backendtest_db_1`"=="true" ]; do
    sleep 0.1;
done;

docker-compose run web ./wait-for-it.sh db:5432 -- bundle exec rake db:setup
