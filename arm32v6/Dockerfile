FROM arm32v6/alpine:3.8
MAINTAINER liuweijian

RUN echo "http://mirrors.aliyun.com/alpine/v3.8/main/" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.8/community/" >> /etc/apk/repositories

CMD ["/bin/sh", "-c", "echo 'ddns is running...';while true;do sleep 10;done"]