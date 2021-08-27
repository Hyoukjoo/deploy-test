FROM node:16

ARG ENV
ENV ENV=${ENV:-dev}

WORKDIR /app

COPY . ./

RUN npm install

EXPOSE 80

CMD [ "npm", "start" ]
