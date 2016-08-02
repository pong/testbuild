FROM ubuntu:latest
MAINTAINER Pong "sila.enc@com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential 
RUN pip install --upgrade pip
ENTRYPOINT ["/usr/bin/python"]
