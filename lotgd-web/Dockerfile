#This image is the NGINX webserver that holds the LotGD PHP files and connects to the DB and PHP containers
FROM nginx:alpine

MAINTAINER Chris P

#Copies the game's PHP files to the container
COPY lotgd /var/www/lotgd 

#Removes the default NGINX config (otherwise localhost won't work)
RUN rm /etc/nginx/conf.d/default.conf

#Copies in the pre-configured lotgd config
COPY lotgd.conf /etc/nginx/conf.d/lotgd.conf

#Port 443 is exposed in case one wants to use SSL, but there is no cert, reverse proxy is advised
EXPOSE 80
EXPOSE 443
