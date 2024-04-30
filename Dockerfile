//FROM node:hydrogen-buster
//FROM node:18.20.2-bookworm-slim
//FROM node:latest
FROM node:21.0-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get upgrade -y && \
    npm install
EXPOSE  4000
CMD node graphserver.js
