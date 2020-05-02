FROM ubuntu:bionic
MAINTAINER tkoyama010@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
ENV TERM xterm

USER root

# getfem repository

RUN apt-get install -y --no-install-recommends git
RUN git clone https://github.com/getfem-doc/getfem.git
RUN cd getfem

# install dependencies

RUN apt-get update
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
RUN pip3 install --no-cache --upgrade pip 
RUN pip3 install -r requirements.txt

# compile

RUN bash autogen.sh
RUN ./configure --with-pic
RUN make -j8
RUN make -j8 check
RUN perl -p -i -e 's/^.*"EPS".*\n//g' /etc/ImageMagick-*/policy.xml
RUN perl -p -i -e 's/^.*"PS".*\n//g'  /etc/ImageMagick-*/policy.xml
RUN perl -p -i -e 's/^.*"PDF".*\n//g' /etc/ImageMagick-*/policy.xml
RUN perl -p -i -e 's/^.*"XPS".*\n//g' /etc/ImageMagick-*/policy.xml
RUN (cd doc/sphinx; make html)

# install

RUN make install
