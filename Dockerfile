FROM python:3.11-slim

WORKDIR /app
COPY .  /app/

RUN apt-get update -y \
    && pip install --upgrade pip \
    && pip install --upgrade setuptools \
    && pip install pipenv \
    && pipenv sync
    # && pipenv shell \

# RUN pipenv shell && pipenv sync