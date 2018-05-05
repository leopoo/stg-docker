#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing 
#    STG(smart-tog) 基础运行环境 包含 jdk-8u161-linux-x64 zookeeper-3.4.6 nginx
#    zookeeper 是单机运行
#
FROM				nexus.ybveg.com:8082/stg/centos-jdk8
MAINTAINER  ZhangBinBin <zhangbinbin@ybveg.com>

RUN yum install -y --enablerepo=epel pwgen python-pip && \
		yum -y install nginx && \ 
    yum clean all

RUN pip install supervisor
ADD supervisord.conf /etc/supervisord.conf

# 环境变量配置
ENV	APP_DIR /app/www

RUN mkdir -p /etc/supervisor.conf.d && \
    mkdir -p /var/log/supervisor &&\
		mkdir -p /app/logs/nginx  &&\
		mkdir -p /app/www &&\
 		mkdir -p /app/logs/supervisor

ADD nginx_nginx.conf /etc/nginx/nginx.conf
ADD nginx_proxy-params.conf /etc/nginx/proxy-params.conf
ADD	nginx_stg.conf  /etc/nginx/conf.d/nginx_stg.conf

# zookeeper 安装地址
ADD zookeeper-3.4.6.tar.gz /usr/local/

RUN echo "<HTML>SERVER_BASE_ALL</HTML>" > ${APP_DIR}/info.html

ADD	supervisor_nginx.conf /etc/supervisor.conf.d/nginx.conf
ADD	supervisor_zookeeper.conf /etc/supervisor.conf.d/zookeeper.conf

EXPOSE  80

ONBUILD RUN chown -R nginx:nginx /app/logs/nginx
ONBUILD RUN chown -R nginx:nginx /app/www

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]