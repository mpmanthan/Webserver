FROM ubuntu
WORKDIR /app
COPY . /app
RUN apt update && apt install -y apache2 
COPY index.html /var/www/html
EXPOSE 85
CMD ["apachectl","-D","FOREGROUND"]

