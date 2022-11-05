FROM nginx:alpine
WORKDIR /public
COPY public/ .
COPY ./nginx.conf /etc/nginx/nginx.conf
