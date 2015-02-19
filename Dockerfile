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
ADD ./tasks $WORKDIR/tasks
ADD ./vars $WORKDIR/vars
ADD ./ci $WORKDIR/ci

# -----> Install Galaxy Dependencies

# -----> Execute
RUN ansible-playbook -i $WORKDIR/ci/inventory $WORKDIR/ci/playbook.yml -c local -vvvv

# -----> Cleanup
WORKDIR /
RUN rm -R /tmp/build
