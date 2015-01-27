#
# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    ansible-java
# tag:      latest
# name:     ansibleshipyard/ansible-java
# version:  v0.1.0
# repo:     https://github.com/AnsibleShipyard/ansible-java
# how-to:   docker build --force-rm -t ansibleshipyard/ansible-java .
# requires: ansibleshipyard/ansible-base-ubuntu
# authors:  github:@jasongiedymin,
#           github:
# ------------------------------------------------------

FROM ansibleshipyard/ansible-base-ubuntu
MAINTAINER ansibleshipyard

# -----> Env
ENV WORKDIR /tmp/build/roles/ansible-java
WORKDIR /tmp/build/roles/ansible-java

# -----> Add assets
# ADD ./main.yml $WORKDIR/main.yml
# ADD ./inventory $WORKDIR/inventory
# ADD ./playbook.yml $WORKDIR/playbook.yml
ADD ./docker $WORKDIR/docker
ADD ./tasks $WORKDIR/tasks
ADD ./vars $WORKDIR/vars
ADD ./tests $WORKDIR/tests

# -----> Install Galaxy Dependencies

# -----> Execute
# RUN cd $WORKDIR
RUN pwd && ls -la
RUN ansible-playbook -i $WORKDIR/docker/inventory $WORKDIR/docker/playbook.yml -c local -vvvv
