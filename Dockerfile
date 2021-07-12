# syntax=docker/dockerfile:1
FROM python:3.8-alpine
ENV PYTHONUNBUFFERED=1
WORKDIR /code
RUN python -m venv venv
RUN . venv/bin/activate && venv/bin/python -m pip install --upgrade pip
COPY adressage-backend-master/requirements.txt /code/
RUN venv/bin/python -m pip install -r requirements.txt
COPY . /code/
