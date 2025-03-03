FROM python:3.9-buster

EXPOSE 8000

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE 1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

WORKDIR /app

RUN apt-get update \
    && pip install --upgrade pip \
    && pip install -r /requirements.txt

COPY ./app /app/
