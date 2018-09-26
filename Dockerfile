FROM ubuntu:18.10
LABEL maintainer "Sharedcloud <admin@sharedcloud.io>"

RUN \
  apt-get update && \
  apt-get install -y python3.6 python3.6-dev python3-pip

RUN pip3 install tensorflow==1.10.1

RUN mkdir -p /data

WORKDIR /data

CMD /bin/bash && python3.6 -c "$CODE"
