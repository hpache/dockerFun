FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean
RUN apt install -y php
RUN apt install -y libapache2-mod-php
COPY index.php /var/www/html
RUN rm /var/www/html/index.html
EXPOSE 80 
CMD ["apache2ctl", "-D", "FOREGROUND"]
