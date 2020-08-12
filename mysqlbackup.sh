#!bin/bash

#Take Parameters
db_name=$1
db_host=$2
db_password=$3
aws_access_key=$4
aws_secret=$5
aws_bucketname=$6
currentDate=$(date +%H-%M-%S)

#Export AWS Variables
export AWS_ACCESS_KEY_ID=$aws_access_key
export AWS_SECRET_ACCESS_KEY=$aws_secret
export AWS_DEFAULT_REGION=us-east-1

#Creates Backup for DB
mysqldump -u root -h $db_host --password=$db_password $db_name > /tmp/MySqlBackup-$currentDate.sql
#Upload it to the aws
aws s3 cp /tmp/MySqlBackup-$currentDate.sql s3://$aws_bucketname


#./mysqlbackup.sh testdb db_host "\"1234"\"
