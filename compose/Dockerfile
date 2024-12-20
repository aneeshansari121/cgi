FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninterative
RUN apt update && apt install apache2 php7.4 php7.4-mysql php7.4-fpm libapache2-mod-php7.4 -y
WORKDIR /var/www/html
#ADD https://wordpress.org/wordpress-6.7.1.tar.gz /var/www/html
COPY wordpress-6.7.1.tar.gz /var/www/html
RUN tar -xzvf wordpress-6.7.1.tar.gz -C .
RUN cd wordpress && mv * .. && cd ..
RUN rm index.html
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
