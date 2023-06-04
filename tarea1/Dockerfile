FROM debian:bullseye
MAINTAINER Belen Nazareth Duran "belennazareth29@gmail.com"
RUN apt-get update && apt-get upgrade -y && apt-get install apache2 libapache2-mod-php php php-mysql mariadb-client -y && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY bookmedik /var/www/html/
ADD script.sh /opt/
RUN chmod +x /opt/script.sh && rm /var/www/html/index.html
ENTRYPOINT ["/opt/script.sh"]
