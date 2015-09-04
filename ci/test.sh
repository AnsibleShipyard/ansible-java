#!/bin/bash
ansible-playbook -i /home/vagrant/roles/ansible-java/ci/inventory /home/vagrant/roles/ansible-java/ci/playbook.yml --connection=local --sudo -vvvv
