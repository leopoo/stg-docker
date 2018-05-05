#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       centos:7
MAINTAINER ZhangBinBin <zhangbinbin@ybveg.com>


ADD jdk-8u161-linux-x64.tar.gz /usr/local/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime

ENV JAVA_HOME /usr/local/jdk1.8.0_161
ENV PATH $PATH:$JAVA_HOME/bin
