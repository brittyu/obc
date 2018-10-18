FROM node:8.12

RUN mkdir /chain
ADD package.json /chain/
ADD main.js /chain/

RUN cd /chain && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /chain && npm install && PEERS=$PEERS npm start
