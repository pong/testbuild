FROM ubuntu:latest
MAINTAINER Pong "sila.enc@com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential 
RUN pip install --upgrade pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["/usr/bin/python","/app/source/webapi.py"]
#CMD ["webapi.py"]