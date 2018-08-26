FROM hshar/ubuntunew1212
ADD demo1 /var/www/html/
CMD apache2 -D FOREGROUND
RUN rm var/www/html/index.html