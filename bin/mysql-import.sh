#!/bin/bash

USER=$1
PASSWORD=$2
DATABASE=$3
FILE=$4

if [ -z $DATABASE ]; then
  echo "Required argument not specified - database"
  exit 1
fi

if [ -z $FILE ]; then
  echo "Required argument not specified - dump filepath"
  exit 1
fi

echo "Import .sql dump from $FILE to database ($DATABASE)"
docker exec -i mysql-server mysql -u$USER -p$PASSWORD $DATABASE < $FILE