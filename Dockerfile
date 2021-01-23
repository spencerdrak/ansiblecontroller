FROM centos:8

RUN yum upgrade -y
RUN yum install -y python38
RUN yum install -y python3-pip
RUN yum install -y openssh-clients
RUN yum install -y epel-release
RUN yum install -y sshpass
RUN yum install -y bind-utils
RUN pip3 install ansible
RUN yum install -y  which
RUN curl -sLS https://get.k3sup.dev | sh

RUN useradd -m ansible
WORKDIR /home/ansible
USER ansible