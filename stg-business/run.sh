#!/bin/bash
set -e

if [ -z "$PROFILE" ]; then
	echo >&2 'error: missing PROFILE environment variables'
	echo >&2 '  请设置启动环境 对应 spring cloud config profile配置'
	echo >&2 '  例如: -e PROFILE=dev,common  启动dev环境'
	exit 1
fi

if [ -z "$ZOOKEEPER_SERVER" ]; then
	echo >&2 'error: missing ZOOKEEPER_SERVER environment variables'
	echo >&2 '  请设置ZOOKEEPER_SERVER 地址'
	echo >&2 '  例如: -e ZOOKEEPER_SERVER=127.0.0.1:2181 启动dev环境'
	exit 1
fi


# 设置 spring boot 启动环境
ACTIVE="--spring.cloud.config.profile=$PROFILE"

ZOOKEEPER="--spring.dubbox.registry.address=$ZOOKEEPER_SERVER"

JAVA_OPTS="-Xms256m -Xmx512m -Xss1024K -XX:PermSize=256m -XX:MaxPermSize=512m -Dfile.encoding=UTF-8"

DEBUG="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8899"

$JAVA_HOME/bin/java -server $JAVA_OPTS $DEBUG -jar /app.jar $ACTIVE $ZOOKEEPER