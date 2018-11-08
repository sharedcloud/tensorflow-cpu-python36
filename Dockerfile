FROM ubuntu:18.10
LABEL maintainer "Sharedcloud <admin@sharedcloud.io>"

RUN \
  apt-get update && \
  apt-get install -y python3.6 python3.6-dev python3-pip

RUN pip3 install tensorflow==1.10.1 jupyter

RUN mkdir -p /data

WORKDIR /data

CMD /bin/bash && [ ! $CODE ] && jupyter notebook --ip=0.0.0.0 --port=8000 --allow-root --NotebookApp.token='' || python3.6 -c "$CODE"
