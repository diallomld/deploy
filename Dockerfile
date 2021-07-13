# syntax=docker/dockerfile:1
FROM python:3.8
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN python3.8 -m pip install -r requirements.txt
COPY . /code/
