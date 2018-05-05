#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       nexus.ybveg.com:8082/stg/centos-base
MAINTAINER ZhangBinBin <zhangbinbin@ybveg.com>

ADD node-v6.11.1-linux-x64.tar.gz /usr/local/

ENV NODE_HOME /usr/local/node-v6.11.1-linux-x64

ENV PATH $PATH:$NODE_HOME/bin:/yuanben/nodejs/node_global/bin

RUN npm config set registry http://nexus.ybveg.com/repository/npm-public/
RUN npm config set registry http://nexus.ybveg.com/repository/npm-public/
RUN npm config set sass_binary_site https://npm.taobao.org/mirrors/node-sass/
RUN npm config set phantomjs_cdnurl https://npm.taobao.org/mirrors/phantomjs/
RUN npm config set chromedriver_cdnurl https://npm.taobao.org/mirrors/chromedriver/
RUN npm config set selenium_cdnurl http://npm.taobao.org/mirrors/selenium

RUN npm install -g yarn && npm install -g apidoc

RUN mkdir -p /yuanben/nodejs && npm config set cache /yuanben/nodejs/cache && npm config set prefix /yuanben/nodejs/node_global
