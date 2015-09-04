#!/bin/bash

TRAVIS=${TRAVIS:-false}

if [ $TRAVIS == true ]; then
  home=./
else
  home=/home/vagrant/roles/ansible-java
fi

echo "ansible-playbook -i $home/ci/inventory $home/ci/playbook.yml --connection=local --sudo -vvvv"
