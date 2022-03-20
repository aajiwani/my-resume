FROM node:16.13.1-alpine

WORKDIR /usr/app

COPY package*.json ./

RUN npm cache verify
RUN npm config set registry http://registry.npmjs.org/
RUN npm install -g npm@8.5.1
RUN export PUPPETEER_SKIP_DOWNLOAD='true'
RUN npm i puppeteer 
#RUN npm install

COPY . .