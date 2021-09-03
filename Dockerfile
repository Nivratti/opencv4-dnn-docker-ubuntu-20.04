FROM ubuntu:20.04

ENV APP_HOME /src

# Creating Work Directory
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN apt update
RUN apt-get install -y build-essential

COPY install_opencv.sh $APP_HOME
RUN chmod 777 install_opencv.sh && ./install_opencv.sh