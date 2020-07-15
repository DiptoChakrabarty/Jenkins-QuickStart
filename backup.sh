#!/bin/bash

DATE=$(date +%H-%M-%S)
db_host=$1
db_password=$2
db_name=$3
aws_access=$4
aws_secret=$5
bucket_name=$6


mysqldump -u root -h $db_host -p$db_password $db_name  > /tmp/db-$DATE.sql && \
export AWS_ACCESS_KEY_ID=$aws_access && \
export AWS_SECRET_ACCESS_KEY=$aws_secret && \
echo "Upload to S3" && \
aws s3 cp /tmp/db-$DATE.sql s3://$bucket_name/db-$DATE.sql