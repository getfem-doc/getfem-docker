FROM ubuntu:bionic
MAINTAINER tkoyama010@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
ENV TERM xterm

USER root
WORKDIR work
RUN apt-get update

# getfem repository

RUN apt-get install -y --no-install-recommends ca-certificates
RUN apt-get install -y --no-install-recommends git
RUN git clone https://github.com/getfem-doc/getfem.git

# install dependencies

RUN apt-get install -y --no-install-recommends automake
RUN apt-get install -y --no-install-recommends libtool
RUN apt-get install -y --no-install-recommends make
RUN apt-get install -y --no-install-recommends g++
RUN apt-get install -y --no-install-recommends libqd-dev
RUN apt-get install -y --no-install-recommends libqhull-dev
RUN apt-get install -y --no-install-recommends libmumps-seq-dev
RUN apt-get install -y --no-install-recommends liblapack-dev
RUN apt-get install -y --no-install-recommends libopenblas-dev
RUN apt-get install -y --no-install-recommends libpython3-dev
RUN apt-get install -y --no-install-recommends ufraw
RUN apt-get install -y --no-install-recommends imagemagick
RUN apt-get install -y --no-install-recommends fig2dev
RUN apt-get install -y --no-install-recommends texlive
RUN apt-get install -y --no-install-recommends xzdec
RUN apt-get install -y --no-install-recommends fig2ps
RUN apt-get install -y --no-install-recommends gv
RUN apt-get install -y --no-install-recommends python3-pip

# compile and install

RUN cd getfem && \
    pip3 install --no-cache --upgrade pip && \
    pip3 install -r requirements.txt && \
    bash autogen.sh && \
    ./configure --with-pic && \
    make -j8 && \
    make -j8 check && \
    make install
RUN ln -s /usr/local/lib/python3.6/site-packages/getfem /usr/local/lib/python3.6/dist-packages/getfem
