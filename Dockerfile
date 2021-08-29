FROM node:16

ARG ENV
ENV ENV=${ENV:-dev}

RUN mkdir -p /app

WORKDIR /app

ADD . /app

ENV NODE_ENV development

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
