#Docker will donwload the the image ubuntu with the tag 12.04 and create a container with ubuntu OS with the version of 12.04
FROM ubuntu:12.04

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y apache2

# Install apache and write hello world message
RUN echo "Hello World!" > /var/www/index.html

# Configure apache
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

# apache available on 8080 port.
EXPOSE 80

CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
' >> Dockerfile
