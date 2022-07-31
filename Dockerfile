FROM node:lts-alpine

WORKDIR /

RUN npm i -g json-server

ADD unspsc.json.tar.xz data/

EXPOSE 8080

CMD ["json-server", "--ro", "-p8080", "-H0", "data/unspsc.json"]
