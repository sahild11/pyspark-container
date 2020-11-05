FROM ubuntu:latest

RUN apt update && apt install python3 python3-pip openjdk-11-jre-headless -y
RUN python3 -m pip install pyspark && ln /usr/bin/python3.8 /usr/bin/python

#CMD pyspark

