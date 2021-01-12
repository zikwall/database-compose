#!/bin/bash

USER=$1
DATABASE=$2
FILE=$3

if [ -z $DATABASE ]; then
  echo "Required argument not specified - database"
  exit 1
fi

if [ -z $FILE ]; then
  echo "Required argument not specified - dump filepath"
  exit 1
fi

echo "Import .sql dump from $FILE to database ($DATABASE)"
docker exec -i mysql-server mysql -u$USER -p $DATABASE < $FILE