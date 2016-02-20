FROM ubuntu:trusty

MAINTAINER franklin <franklin@weareinteractive.com>

# Install packages for building ruby
RUN apt-get update && apt-get install -y python-pip
RUN pip install ansible==2.0.2 && apt-get clean

ADD files/etc/ansible/ansible.cfg /etc/ansible/ansible.cfg
ADD files/usr/sbin/policy-rc.d /usr/sbin/policy-rc.d

RUN mkdir -p /usr/share/ansible/roles
RUN mkdir -p /usr/share/ansible/library

RUN mkdir /opt/ansible

WORKDIR /opt/ansible
