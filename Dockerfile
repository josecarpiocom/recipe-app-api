FROM python:3.7-alpine
MAINTAINER Jose


## con PYTHONUNBUFFED mejoramos en memoria
ENV PYTHONUNBUFFED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

## Por seguridad mejor add user para ejecutar el programa
RUN adduser -D user
USER user



