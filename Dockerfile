# Example Minimalist Base Docker Image
# Start with Ubuntu base image
FROM ubuntu:14.04
MAINTAINER Brett Beaulieu-Jones <brettbe@med.upenn.edu>

# install python depencies for plotting
RUN apt-get update && apt-get install -y \
 build-essential \
 git \
 pkg-config \
 python-matplotlib \
 libpng-dev \
 libfreetype6 \
 libfreetype6-dev \
 python3-dev \
 python3-pip \
 python3-numpy \
 python3-scipy \
 cmake \
 zlib1g-dev \
 libhdf5-dev

RUN pip3 install seaborn && \
	pip3 install jupyter && \
	pip3 install nose2 && \
	pip3 install coverage 

RUN git clone https://github.com/pachterlab/kallisto.git
RUN mkdir /kallisto/build
RUN cd kallisto/build && \
	cmake .. && \
	make && \
	make install