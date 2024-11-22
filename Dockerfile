# Dockerfile
FROM ubuntu:22.04
LABEL maintainer="Rokia"

RUN apt-get update && apt-get install -y nginx && apt-get clean

COPY index.html /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
