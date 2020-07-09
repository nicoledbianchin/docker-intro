FROM node:latest
MAINTAINER Nicole Bianchin
ENV PORT=3000
RUN mkdir /var/www
COPY index.html /var/www
COPY index.js /var/www
COPY main.css /var/www
COPY package.json /var/www
WORKDIR /var/www
RUN npm install
ENTRYPOINT npm start
EXPOSE $PORT