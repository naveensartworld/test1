#Built on latest version on Ubuntu
FROM ubuntu:latest

#Updating and/or Upgrading the Version of Ubuntu
#Istalling Apache2 PHP SSH (client and server) and Curl
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apache2 
ADD demo1 /var/www/html/
#Opening port 80 for the web server
#EXPOSE 80
#Making Apache2 Server run in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
RUN rm var/www/html/index.html

#FROM hshar/new:1.0
#ADD demo1 /var/www/html/
#CMD apache2 -D FOREGROUND
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#RUN rm var/www/html/index.html