FROM ubuntu:trusty

MAINTAINER franklin <franklin@weareinteractive.com>

# Install packages for building ruby
RUN apt-get update && apt-get install -y python-dev python-yaml python-pip
RUN pip install ansible
RUN apt-get clean

ADD ansible.cfg /etc/ansible/ansible.cfg

RUN mkdir /usr/shared/ansible/roles
RUN mkdir /usr/shared/ansible/library

RUN mkdir /opt/ansible

WORKDIR /opt/ansible
