FROM node:20-alpine

WORKDIR /app

COPY ./src .

USER root

#RUN npm install -g npm@10.4.0


RUN npm install

USER node

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "server.js" ]