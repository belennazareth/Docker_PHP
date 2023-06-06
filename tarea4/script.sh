#! /bin/sh

sleep 10

mysql -u $bookmedik_user --password=$bookmedik_passwd -h $host_database $db_name  < /usr/share/nginx/html/schema.sql

nginx -g "daemon off;"
