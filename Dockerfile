FROM ubuntu:latest

RUN apt update && apt install python3 python3-pip openjdk-11-jre-headless git -y
RUN python3 -m pip install pyspark && ln /usr/bin/python3.8 /usr/bin/python
RUN git clone https://github.com/sahild11/pyspark-container.git
WORKDIR pyspark-container
RUN useradd -ms /bin/bash dave
USER dave
CMD echo "PYSPARK \n_______\nenter 'pyspark' to start session. You are currently in shell as $whoami" && /bin/bash

