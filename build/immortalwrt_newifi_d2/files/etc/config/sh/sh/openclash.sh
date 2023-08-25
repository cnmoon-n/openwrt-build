#!/bin/sh

PATH="/usr/sbin:/usr/bin:/sbin:/bin"
#!/bin/sh
### BEGIN INIT INFO


if test $( ls -l /tmp/openclash/geoip.dat | wc -l ) -eq 0

then

echo "进程不存在"
mkdir -p /tmp/openclash/
chmod -R 0777 /tmp/openclash/
wget -c -t 0 https://testingcf.jsdelivr.net/gh/Hackl0us/GeoIP2-CN@release/Country.mmdb -O /tmp/openclash/Country.mmdb
wget -c -t 0 https://ftp.jaist.ac.jp/pub/sourceforge.jp/storage/g/v/v2/v2raya/dists/v2ray-rules-dat/geoip.dat -O /tmp/openclash/geoip.dat
wget -c -t 0 https://testingcf.jsdelivr.net/gh/felixonmars/dnsmasq-china-list@master/accelerated-domains.china.conf -O /tmp/openclash/accelerated-domains.china.conf
wget -c -t 0 https://ispip.clang.cn/all_cn_ipv6.txt -O /tmp/openclash/all_cn_ipv6.txt
wget -c -t 0 https://ispip.clang.cn/all_cn.txt -O /tmp/openclash/all_cn.txt
ln -s /tmp/openclash/geoip.dat /etc/openclash/geoip.dat
ping www.163.com -c 1


else

echo "存在进程"
ping www.126.com -c 1

fi