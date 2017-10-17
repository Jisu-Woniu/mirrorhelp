FROM daocloud.io/nginx

MAINTAINER ericdiao @ Geek Pie Association

EXPOSE 80

RUN mkdir ／mirrorshelp
COPY . /mirrorshelp

COPY nginx.conf /etc/nginx/nginx.conf
COPY mirrorhelp.conf /etc/nginx/sites-enabled/mirrorhelp.conf

WORKDIR /mirrorshelp
RUN apt-get update && apt-get -y install python make nginx python-pip git && pip install -r requirements.txt

RUN make html
