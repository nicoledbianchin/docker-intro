FROM node:latest
MAINTAINER Nicole Bianchin
RUN mkdir /var/www
COPY index.html /var/www
COPY index.js /var/www
COPY main.css /var/www
COPY package.json /var/www
WORKDIR /var/www
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000