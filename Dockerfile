FROM ubuntu:bionic
MAINTAINER tkoyama010@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
ENV TERM xterm
RUN apt-get update
