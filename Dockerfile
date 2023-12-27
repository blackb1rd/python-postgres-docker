FROM postgres:16
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install python3 -f -y

ENTRYPOINT ["/bin/bash"]
