#!/bin/sh
###unas 的dev 是ens18 openwrt 是pppoe-wan/br-lan
ip=`ip -6 addr show dev br-lan |grep '/64 scope global'|grep -v deprecated|awk -F '/|inet6 ' 'NR==1{print $2;}' 2>&1` || die "$ip"
curl "https://dynv6.com/api/update?hostname=eye10250.dynv6.net&ipv6=$ip&token=876xxUQDk5yvkK4WL74izEeSbiCn7k" -k > /etc/config/sh/eye10250.log

curl -X POST https://dnsapi.cn/Record.Modify -d "login_token=337504,45c889017749b3d0d608f3224ce6f12a&record_id=1183725785&format=json&domain=etceye.eu.org&sub_domain=eye10250&value=$ip&record_type=AAAA&record_line=%e9%bb%98%e8%ae%a4" >> /etc/config/sh/eye10250.log