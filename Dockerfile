//FROM node:18.20.2-bookworm-slim
//FROM node:latest-slim
//COPY graphserver.js .
//COPY package.json .
//COPY UScities.json .
//RUN npm install &&\
//    apt-get update &&\
//    apt-get upgrade
//EXPOSE  4000
//CMD ["node", "graphserver.js"]

FROM node:hydrogen-buster
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
