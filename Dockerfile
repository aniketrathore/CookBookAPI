FROM python:3.7-alpine
MAINTAINER aniketrathore
ENV PYTHONUNBUFFERED 1
COPY ./requirments.txt /requirments.txt
RUN pip install -r /requirments.txt
RUN mkdir -p app
WORKDIR app
COPY ./app /app
RUN adduser -D aniketrathore
USER aniketrathore