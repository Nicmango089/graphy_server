//FROM node:hydrogen-buster
//FROM node:18.20.2-bookworm-slim
//FROM node:latest
FROM node:21.0-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .

//-- ADDED :

//RUN sudo apt-get install zlib1g-dev

//RUN sudo apt clean &&\
//    sudo apt download zlib1g:i386 &&\
//    sudo dpkg --install zlib1g_1%3a1.2.11.dfsg-2ubuntu9.2_i386.deb &&\
//    sudo dpkg --configure -a &&\
//    sudo apt --fix-broken install &&\

//RUN apt-get install zlib

//RUN sudo apt-get install build-essential fakeroot &&\
//    sudo apt-get build-dep zlib &&\
//    dpkg-source zlib_1.2.7.dfsg-13.dsc &&\
//    cd zlib-1.2.7.dfsg &&\
//    dpkg-buildpackage -rfakeroot -us -uc -b -nc &&\
//    sudo apt-get install ../zlib1g-1.2.7.*.deb

//RUN sudo apt-get install zlib1g-dev &&\
//    sudo apt-get upgrade

//RUN sudo apt-get update && sudo apt-get dist-upgrade

RUN sudo apt-get upgrade

//-- -- -- --

RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
