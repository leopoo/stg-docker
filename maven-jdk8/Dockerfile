#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       nexus.ybveg.com:8082/stg/centos-jdk8
MAINTAINER ZhangBinBin <zhangbinbin@ybveg.com>

ADD apache-maven-3.5.3-bin.tar.gz /usr/local/
ADD settings.xml /usr/local/apache-maven-3.5.3/conf/

ENV MAVEN_HOME /usr/local/apache-maven-3.5.3
ENV PATH $PATH:$MAVEN_HOME/bin
