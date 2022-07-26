FROM python:3.9.10-slim-buster

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential

RUN pip install --upgrade pip

ARG REDASQL_VERSION
RUN pip install redasql==$REDASQL_VERSION

ENTRYPOINT ["/bin/bash", "-c", "redasql"]