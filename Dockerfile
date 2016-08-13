FROM python:alpine

MAINTAINER kevin.marilleau@gmail.com

# required for Pillow to find zlib-dev; don't change!
ENV LIBRARY_PATH /lib:/usr/lib
ENV TZ UTC

# always required sources for django-cms
RUN apk add --no-cache --virtual .build-deps \
 build-base \
 zlib-dev \
 && apk add --no-cache \
 jpeg-dev \
# run the latest djangocms installer but only have it install dependencies and then cleanup
 && pip install --no-cache-dir djangocms-installer

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ADD https://rawgit.com/daimebag/django-cms-docker/master/run.sh /usr/src

CMD sh /usr/src/run.sh
