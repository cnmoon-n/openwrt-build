#!/bin/sh
# author: jr

ip=106.11.84.3,106.3.143.6,106.3.143.7,106.3.143.8,111.10.46.241,111.13.210.42,111.19.241.236,112.46.25.102,112.46.25.169,112.53.36.111,112.60.8.27,114.113.88.169,117.156.244.237,117.174.151.224,120.226.7.9,120.232.195.52,120.92.45.146,124.250.21.87,183.232.112.70,183.232.246.168,183.232.25.152,183.232.25.154,183.232.25.155,203.209.230.17,221.178.32.200,36.147.3.118,36.170.17.123,39.106.174.51,47.94.113.237,59.110.149.74,59.82.30.17
enable_ip(){
echo "Open ports $ip." 
        #iptables -I FORWARD -p tcp --dport 443 -m mac --mac-source 88:F8:72:C6:04:AE -j DROP
        #iptables -I FORWARD -p tcp --dport 80 -m mac --mac-source 88:F8:72:C6:04:AE -j DROP             
        iptables -I FORWARD -d $ip -m mac --mac-source 88:F8:72:C6:04:AE -j ACCEPT

       	iptables-save
	iptables-save > /etc/config/sh/ip.rules
	echo "enable $ip success." 
}
			
disable_ip(){
	rule_number=`iptables -L -n --line-number | grep $ip | awk '{print $1}'`
	if  [ ! -n "$rule_number" ] ;then
		echo "Ports $ip dont't have iptables rules."
	else
            #iptables -I FORWARD -p tcp -m multiport --dport 80,443 -d $ip -m mac --mac-source 88:F8:72:C6:04:AE -j ACCEPT
                   #iptables -I FORWARD -s 192.168.123.226 -d $ip -j ACCEPT
        #iptables -I FORWARD -d $ip -m mac --mac-source 88:F8:72:C6:04:AE -j ACCEPT
	#iptables -I FORWARD -s $ip -p tcp -m mac --mac-source 88:F8:72:C6:04:AE -j ACCEPT

		echo "Delete input rule $rule_number."
		iptables -D FORWARD $rule_number
	fi
	echo "disable $ip success." 
}
						
case $1 in
enable)
	enable_ip;;
disable)
	disable_ip;;
*)
	echo "Usage:`basename $0` {enable|disable}";;
esac