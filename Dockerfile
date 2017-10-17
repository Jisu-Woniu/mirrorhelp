
FROM daocloud.io/nginx

MAINTAINER ericdiao @ Geek Pie Association

RUN mkdir ／mirrorshelp
COPY . /mirrorshelp
WORKDIR /mirrorshelp
RUN apt-get update && apt-get install python make nginx python-pip git && pip install -r requirements.txt
RUN make html
EXPOSE 3405
COPY nginx.conf /etc/nginx/sites-enabled/mirrorhelp.conf
