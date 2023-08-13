#!/bin/sh

PATH="/usr/sbin:/usr/bin:/sbin:/bin"
#!/bin/sh
### BEGIN INIT INFO


if test $( ls -l /tmp/AdGuardHome/D2-AdGuardHome_upx | wc -l ) -eq 0

then

echo "进程不存在"
cd /mnt/i/tool/subconverter
./subconverter > /tmp/log/subconverter.log
ping www.163.com -c 1
mkdir -p /tmp/AdGuardHome
chmod -R 0777 /tmp/AdGuardHome
wget -c -t 0 https://cdn.jsdelivr.net/gh/cncot/tv@master/D2-AdGuardHome_upx -O /tmp/AdGuardHome/D2-AdGuardHome_upx
######curl -L -k -o https://gitee.com/etceye/AdGuardHome/raw/master/D2-AdGuardHome_upx
chmod -R 0777 /tmp/AdGuardHome/
/etc/init.d/AdGuardHome enable
/etc/init.d/AdGuardHome restart

else

echo "存在进程"
ping www.126.com -c 1

fi