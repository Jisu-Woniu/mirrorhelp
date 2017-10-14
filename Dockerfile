FROM alpine:latest

MAINTAINER ericdiao @ Geek Pie Association
RUN mkdir ／mirrorshelp
RUN cp . /mirrorshelp
RUN apk add --no-cache python make nginx && pip install -r requirements.txt
WORKDIR /mirrorshelp
RUN make html
EXPOSE 3405
RUN nginx -c /mirrorhelp/nginx.conf
