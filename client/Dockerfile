FROM node:16

RUN apt update -y
RUN apt install nginx -y
RUN mkdir -p /app

COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf

WORKDIR /app

ADD . /app

EXPOSE 8080

CMD [ "nginx", "-g", "daemon off;" ]
