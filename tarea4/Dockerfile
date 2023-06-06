FROM nginx
MAINTAINER Belen Nazareth Duran "belennazareth29@gmail.com"
RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-client -y && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD default.conf /etc/nginx/conf.d/
ADD bookmedik /usr/share/nginx/html
ADD script.sh /opt/
RUN chmod +x /opt/script.sh && rm /usr/share/nginx/html/index.html
ENTRYPOINT ["/opt/script.sh"]
