FROM node:19.1-alpine

WORKDIR /app

COPY server.js /app

RUN npm install redis

CMD node /app/server.js