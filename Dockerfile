from python:3.8-alpine
MAINTAINER maxsistemas

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
copy ./app /app

RUN adduser -D adduser
USER user
