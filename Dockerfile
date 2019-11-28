FROM python:3.8.0-buster
MAINTAINER aniketrathore
ENV PYTHONUNBUFFERED 1
COPY ./requirments.txt /requirments.txt
RUN pip install -r /requirments.txt
RUN mkdir -p app
WORKDIR app
COPY ./app /app
RUN adduser aniketrathore
USER aniketrathore