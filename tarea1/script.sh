#! /bin/sh

mysql -u $bookmedik_user --password=$bookmedik_passwd -h $host_database $db_name < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
