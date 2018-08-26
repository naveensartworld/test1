FROM hshar/ubuntunew1212
ADD demo1 /var/www/html/
CMD apacheclt -D FOREGROUND
RUN rm var/www/html/index.html