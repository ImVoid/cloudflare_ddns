#!/bin/sh

# 获取域名id
curl -s -X GET "https://api.cloudflare.com/client/v4/zones/${ZONE_ID}/dns_records?type=A&name=${DOMAIN}" \
     -H "X-Auth-Email:${EMAIL}" \
     -H "X-Auth-Key: ${KEY}" \
     -H "Content-Type: application/json" | jq -r ".result | .[0] | .id" > /tmp/data.json

# 更新记录
curl -X PUT "https://api.cloudflare.com/client/v4/zones/${ZONE_ID}/dns_records/`cat /tmp/data.json`" \
     -H "X-Auth-Email: ${EMAIL}" \
     -H "X-Auth-Key: ${KEY}" \
     -H "Content-Type: application/json" \
     --data "{\"type\":\"A\",\"name\":\"${DOMAIN}\",\"content\":\"`curl api.ipify.org`\",\"ttl\":120,\"proxied\":false}"