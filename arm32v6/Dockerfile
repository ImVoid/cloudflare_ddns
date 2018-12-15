FROM arm32v6/alpine:3.8
MAINTAINER liuweijian

RUN apk update \
    && apk add --no-cache curl jq

COPY ddns.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/ddns.sh

CMD ["/bin/sh", "-c", "echo 'ddns is running...';while true;do ddns.sh;sleep 600;done"]