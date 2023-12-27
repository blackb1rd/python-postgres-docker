FROM python:3.12
ARG DEBIAN_FRONTEND=noninteractive

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN apt update
  && apt install postgresql postgresql-contrib -f -y