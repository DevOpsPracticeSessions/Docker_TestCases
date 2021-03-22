FROM ubuntu:latest

#install all the tools you might want to use in your container

RUN apt-get update && apt-get install curl -y && apt-get install vim -y

#the following ARG turns off the questions normally asked for location and timezone for Apache

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install apache2 -y

#change working directory to root of apache webhost

WORKDIR var/www/html

COPY index.html index.html

#now start the server

CMD ["apachectl", "-D", "FOREGROUND"]
