FROM centos:7

MAINTAINER de13 <stephane.beuret@data-essential.com>

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y vim git python34-setuptools python34-pip gcc python34-devel && \
    pip3 install --upgrade pip && \
    pip install django==1.8

COPY python.vim /root/.vim/ftplugin/python.vim
COPY vimrc /root/.vimrc
COPY bashrc /root/.bashrc
