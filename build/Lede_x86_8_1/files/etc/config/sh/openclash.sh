###wget "http://192.168.123.2:25500/sub?target=clash&url=/mnt/docker/docker/subconverter/eye/proxies.txt|/mnt/docker/docker/subconverte/eye/v2&insert=false&config=rules/ACL4SSR/Clash/config/ACL4SSR_Online_Full_MultiMode_zj.ini" --no-check-certificate -O /etc/openclash/config/unas.yaml




###含有V2####wget "http://192.168.123.2:25500/sub?target=clash&url=/mnt/docker/docker/subconverter/eye/mycncot/ssr|/mnt/docker/docker/subconverter/eye/proxies.txt|/mnt/docker/docker/subconverter/eye/v2&insert=false&config=rules/ACL4SSR/Clash/config/zj.ini" --no-check-certificate -O /etc/openclash/config/unas.yaml

###替换测速网址
##sed -i "s#http://www.gstatic.com/generate_204/#http://www.google.com#" /usr/share/openclash/dashboard/assets/index*.js


###下载fq文件
wget "http://192.168.123.2:25500/sub?target=clash&url=/mnt/docker/docker/subconverter/eye/mycncot/ssr|/mnt/docker/docker/subconverter/eye/proxies.txt&insert=false&config=rules/ACL4SSR/Clash/config/zj.ini&exclude=%E7%AB%8B%E9%99%B6%E5%AE%9B&emoji=true&list=false&tfo=false&scv=false&fdn=false&sort=false" --no-check-certificate -O /etc/openclash/config/unas.yaml




