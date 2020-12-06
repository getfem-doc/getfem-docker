FROM jupyter/base-notebook:python-3.8.6
MAINTAINER tkoyama010@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
ENV TERM xterm

USER root
WORKDIR work
RUN apt-get update

# install getfem

RUN apt-get install -y --no-install-recommends python3-getfem++
RUN apt-get install -y --no-install-recommends libgetfem++-dev
RUN apt-get install -y --no-install-recommends mayavi2
