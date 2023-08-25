#curl -6 "https://dynv6.com/api/update?hostname=etceye.dynv6.net&ipv6=auto&token=EEKykqBBQ7De2ky1xKN3BBEQNuoBrn" > /etc/config/sh/dynv6.log

#!/bin/sh
###unas 的dev 是ens18 openwrt 是pppoe-wan/br-lan
#ip=`ip -6 addr show dev br-lan |grep '/64 scope global'|grep -v deprecated|awk -F '/|inet6 ' 'NR==1{print $2;}' 2>&1` || die "$ip"
ip=`ip -6 addr show dev br-lan |grep '240'|grep /6|grep -v deprecated|awk -F '/|inet6 ' 'NR==1{print $2;}' 2>&1` || die "$ip"

##curl "https://dynv6.com/api/update?hostname=etceye.dynv6.net&ipv6=$ip&token=EEKykqBBQ7De2ky1xKN3BBEQNuoBrn" -k > /etc/config/sh/dynv6.log


curl -6 "https://dynv6.com/api/update?hostname=eyenclede.dynv6.net&ipv6=$ip&token=876xxUQDk5yvkK4WL74izEeSbiCn7k" -k > /etc/config/sh/dynv6.log

ipwan=`ip -6 addr show dev br-lan |grep '240'|grep /6|grep -v deprecated|awk -F '/|inet6 ' 'NR==1{print $2;}' 2>&1` || die "$ipwan"

curl -X POST https://dnsapi.cn/Record.Modify -d "login_token=337504,45c889017749b3d0d608f3224ce6f12a&record_id=1183678299&format=json&domain=etceye.eu.org&sub_domain=eye100hax&value=$ipwan&record_type=AAAA&record_line=%e9%bb%98%e8%ae%a4" >> /etc/config/sh/dynv6.log