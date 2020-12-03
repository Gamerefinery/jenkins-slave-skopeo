FROM openshift/jenkins-slave-base-centos7

MAINTAINER Tero Ahonen <tero@gamerefinery.com>

USER root

RUN yum install skopeo -y

USER 1001
