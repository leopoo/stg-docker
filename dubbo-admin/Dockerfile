#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       tomcat:8.0.51-jre8-slim
MAINTAINER ZhangBinBin <zhangbinbin@ybveg.com>

RUN rm -rf /usr/local/tomcat/webapps/*
ADD dubbo-admin.tar.gz /usr/local/tomcat/webapps/ROOT
ADD run.sh run.sh
ENV APP_PATH /usr/local/tomcat/webapps/ROOT

ENTRYPOINT [ "./run.sh" ]