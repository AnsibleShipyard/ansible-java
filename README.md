ansible-java
=============

[![Build Status](https://travis-ci.org/AnsibleShipyard/ansible-java.svg?branch=master)](https://travis-ci.org/AnsibleShipyard/ansible-java)


## Usage

docker pull [ansibleshipyard/ansible-java](https://registry.hub.docker.com/u/ansibleshipyard/ansible-java/)


## Info

Java Playbook for Ansible

This playbook will install Java OpenJDK.

It optionally uses the [ppa:openjdk-r/ppa](https://launchpad.net/~openjdk-r/+archive/ubuntu/ppa) repository for Ubuntu, to add backports of Java, for example OpenJDK 8 on Ubuntu 14.04. Set `use_openjdk_ppa: true` to use the repo.

Support open source!
