#!/bin/sh
###unas 的dev 是ens18 openwrt 是pppoe-wan/br-lan
ip=`ip -6 addr show dev eth0.2 |grep 'scope global'|grep -v deprecated|awk -F '/|inet6 ' 'NR==1{print $2;}' 2>&1` || die "$ip"
curl "http://dynv6.com/api/update?hostname=eye10001.dynv6.net&ipv6=$ip&token=876xxUQDk5yvkK4WL74izEeSbiCn7k" -k > /etc/config/sh/curl.log

###curl "http://dynv6.com/api/update?hostname=eye10000.dynv6.net&token=876xxUQDk5yvkK4WL74izEeSbiCn7k&ipv6=$ip" -k

curl -X POST https://dnsapi.cn/Record.Modify -d "login_token=337504,45c889017749b3d0d608f3224ce6f12a&record_id=1183906781&format=json&domain=etceye.eu.org&sub_domain=eye10gz&value=$ip&record_type=AAAA&record_line=%e9%bb%98%e8%ae%a4" >> /etc/config/sh/curl.log


 