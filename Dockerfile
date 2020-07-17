FROM nginx

MAINTAINER ericdiao @ Geek Pie Association

EXPOSE 80

RUN mkdir /logs
RUN mkdir /mirrorshelp
COPY . /mirrorshelp

COPY nginx.conf /etc/nginx/nginx.conf
COPY mirrorhelp.conf /etc/nginx/sites-enabled/mirrorhelp.conf

WORKDIR /mirrorshelp
# RUN sed -i 's/httpredir.debian.org/mirrors.geekpie.org/g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y python make python-pip git && pip install -r requirements.txt

RUN make html
