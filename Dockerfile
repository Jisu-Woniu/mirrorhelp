
FROM alpine:latest

MAINTAINER ericdiao @ Geek Pie Association
RUN mkdir ／mirrorshelp
COPY . /mirrorshelp
WORKDIR /mirrorshelp
RUN apk add --no-cache python make nginx py-pip git && pip install -r requirements.txt
RUN make html
EXPOSE 3405
RUN nginx -c /mirrorhelp/nginx.conf
