FROM node:16

RUN apt update -y
RUN apt install nginx -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir -p /app

WORKDIR /app

ADD . /app

COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 8080

CMD ["/usr/sbin/nginx"]