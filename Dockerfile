FROM node:alpine

LABEL maintainer="Putri Nurifa Firdausia <putrinurifa818@gmail.com>"

RUN apk update && apk add ca-certificates && update-ca-certificates

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN npm install
CMD npm start
