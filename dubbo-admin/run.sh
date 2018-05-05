#!/bin/sh
set -e

if [ -z "$ZK" ]; then
	echo >&2 'error: missing ZK environment variables'
	echo >&2 '  请配置zookeeper地址'
	echo >&2 '  例如: 127.0.0.1:2181'
	exit 1
fi

sed -i "s/127.0.0.1:2181/$ZK/g" $APP_PATH/WEB-INF/dubbo.properties

if [ -n "$ROOT_PWD" ]; then
	sed -i "s/=root/=$ROOT_PWD/g" $APP_PATH/WEB-INF/dubbo.properties
fi


if [ -n "$GUEST_PWD" ]; then
	sed -i "s/=guest/=$GUEST_PWD/g" $APP_PATH/WEB-INF/dubbo.properties
fi

exec catalina.sh run