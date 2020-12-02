FROM openshift/jenkins-slave-maven-centos7

MAINTAINER Tero Ahonen <tero@gamerefinery.com>

USER root

RUN yum remove java-1.8.0-openjdk-devel -y && \
    yum install --setopt=tsflags=nodocs -y skopeo java-11-openjdk-devel && \
    yum update -y && \
    yum clean all -y

USER 1001
