#!/bin/bash

DATE=$(date +%H-%M-%S)
db_host=$1
db_password=$2
db_name=$3

mysqldump -u root -h $db_host -p$db_password $db_name  > /tmp/db-$DATE.sql