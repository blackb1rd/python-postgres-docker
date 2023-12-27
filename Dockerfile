FROM python:3.12
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install postgresql postgresql-contrib -f -y

ENTRYPOINT ["/bin/bash", "-c", "service postgresql start && service postgresql status"]
