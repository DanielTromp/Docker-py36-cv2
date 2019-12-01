FROM ubuntu:18.04
MAINTAINER "Daniël Tromp" <drpgmtromp@gmail.com>

# Prerequisites
RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends \
        build-essential bzip2 cmake curl git libopenblas-dev liblapack-dev \
        python3.6 python3.6-dev python3-pip python3-setuptools wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2 \
    && update-alternatives --set python /usr/bin/python3.6
  
RUN pip3 install opencv-contrib-python-headless numpy Pillow imutils dlib
