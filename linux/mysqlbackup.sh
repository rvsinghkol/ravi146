#!/bin/bash
#Database Credentials
user="root"
password="redhat"
host="localhost"
db_name="bugzilla"

# backup Path
backup_path="/root/DB_Backup"
date=$(date +"%m-%d-%Y")

mkdir -p "$backup_path"
# default file permission
umask 177
# Dump
mysqldump --user=$user --password=$password --host=$host $db_name | gzip  > $backup_path/$db_name-$date.sql.gz
