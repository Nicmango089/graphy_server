//FROM node:hydrogen-buster
//FROM node:18.20.2-bookworm-slim
FROM node:latest
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
//-- ADDED :
RUN sudo apt-get install zlib1g-dev
//-- -- -- --
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
