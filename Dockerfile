FROM node:lts-alpine

WORKDIR /ws

RUN npm i -g json-server

COPY unspsc.json data.json

EXPOSE 8080

CMD ["json-server", "--ro", "-p8080", "data.json"]
