#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing
#    STG(smart-tog) web docker image
#
FROM				nginx:1.12.2
MAINTAINER  ZhangBinBin <zhangbinbin@ybveg.com>

ADD nginx/nginx_nginx.conf /etc/nginx/nginx.conf
ADD nginx/nginx_proxy-params.conf /etc/nginx/proxy-params.conf
ADD nginx/nginx_stg.conf  /etc/nginx/conf.d/default.conf

ADD dist /app
ONBUILD RUN chown -R nginx:nginx /var/log/nginx
ONBUILD RUN chown -R nginx:nginx /app
