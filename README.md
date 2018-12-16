# 基于CloudFlare API实现的动态域名解析

## 可用标签
- x86([Dockerfile](https://github.com/ImVoid/cloudflare_ddns/blob/master/x86/Dockerfile))
- arm32v6([Dockerfile](https://github.com/ImVoid/cloudflare_ddns/blob/master/x86/Dockerfile))

## 应设置的环境变量
- `ZONE_ID` CloudFlare zone id
- `EMAIL` CloudFlare Email
- `KEY` CloudFlare key
- `DOMAIN` 待进行DDNS的域名

#docker-compse
```
version: "3"

services:
  ddns:
    container_name: ddns
    image: liuweijian/cloudflare_ddns:x86
    restart: always
    environment:
    - ZONE_ID=xxx
    - DOMAIN=demo.ddns.com
    - EMAIL=xxx@xxx.com
    - KEY=xxx
```