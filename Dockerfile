FROM brettt89/silverstripe-web:7.3-debian-stretch

WORKDIR /app

RUN git clone https://github.com/MattSurabian/DuckHunt-JS.git

RUN cp -r DuckHunt-JS/dist/* /var/www/html

EXPOSE 80
EXPOSE 443

