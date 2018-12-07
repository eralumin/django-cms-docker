FROM python:3.5

MAINTAINER kevin.marilleau@gmail.com 

EXPOSE 8000 

RUN pip install --no-cache-dir djangocms-installer

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ADD https://cdn.jsdelivr.net/gh/daimebag/django-cms-docker/run.sh /usr/src

CMD sh /usr/src/run.sh
