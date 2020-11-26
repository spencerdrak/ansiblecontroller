FROM centos:8

RUN yum upgrade -y
RUN yum install -y python38
RUN yum install -y python3-pip
RUN pip3 install ansible

RUN useradd -m ansible
WORKDIR /home/ansible
USER ansible