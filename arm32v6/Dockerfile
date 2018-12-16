FROM liuweijian/alpine-arm:3.8
MAINTAINER liuweijian

RUN [ "cross-build-start" ]
RUN echo "http://mirrors.aliyun.com/alpine/v3.8/main/" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.8/community/" >> /etc/apk/repositories
RUN apk update \
    && apk add --no-cache curl jq
RUN [ "cross-build-end" ]

COPY ddns.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/ddns.sh

CMD ["/bin/sh", "-c", "echo 'ddns is running...';while true;do ddns.sh;sleep 600;done"]