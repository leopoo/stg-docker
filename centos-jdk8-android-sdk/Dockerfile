#
# MAINTAINER        ZhangBinBin <zhangbinbin@ybveg.com>
# DOCKER-VERSION    18.03.0-ce
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       nexus.ybveg.com:8082/stg/centos-jdk8
MAINTAINER ZhangBinBin <zhangbinbin@ybveg.com>

COPY android-sdk_r24.4.1-linux.tgz usr/local/
RUN tar --extract --gzip --file=/usr/local/android-sdk_r24.4.1-linux.tgz

RUN echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter android-25
RUN echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter platform-tools
RUN echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter build-tools-26.0.2
RUN echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-android-m2repository
RUN echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-google-google_play_services
RUN echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-google-m2repository

ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV PATH $PATH:$ANDROID_HOME/platform-tools/