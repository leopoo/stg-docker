#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing 
#    STG docker 内网服务 business 镜像
#
FROM        nexus.ybveg.com:8082/stg/centos-jdk8
MAINTAINER  ZhangBinBin <zhangbinbin@ybveg.com>

RUN mkdir /yuanben && mkdir -p /app/
ADD business-service.jar app.jar
ADD run.sh run.sh

ENV JAVA_OPTS="-Xms256m -Xmx512m -Xss1024K -XX:PermSize=256m -XX:MaxPermSize=512m -Dfile.encoding=UTF-8"

# 远程调试端口
EXPOSE 8899



ENTRYPOINT ["/run.sh"]