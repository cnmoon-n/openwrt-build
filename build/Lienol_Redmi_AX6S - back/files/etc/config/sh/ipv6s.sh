ip6tables -A input_lan_rule -i br-lan -p udp -m mac --mac-source mac 52:54:00:8A:61:BF --dport 547 -j ACCEPT


ip6tables -A input_lan_rule -i br-lan -p ipv6-icmp -m mac --mac-source 52:54:00:8A:61:BF -j ACCEPT


ip6tables -A input_lan_rule -i br-lan -p udp -m mac --mac-source mac C4:83:4F:27:17:A2 --dport 547 -j ACCEPT

ip6tables -A input_lan_rule -i br-lan -p ipv6-icmp -m mac --mac-source mac C4:83:4F:27:17:A2 -j ACCEPT

ip6tables -A input_lan_rule -i br-lan -p udp --dport 547 -j DROP
ip6tables -A input_lan_rule -i br-lan -p ipv6-icmp -j DROP
