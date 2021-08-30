FROM node:16

RUN apt update -y
RUN apt install nginx -y
RUN mkdir -p /app

WORKDIR /app

ADD . /app

COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf

RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
# CMD ["nginx", "-g", "daemon off;"]