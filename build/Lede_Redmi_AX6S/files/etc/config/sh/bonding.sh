#modprobe bonding mode=0 miimon=100  #设置bonding模式为0，通用性较好，不依赖交换机协议mode=0 即mode balance-rr 而mode=4(802.3ad)

ip link add bond-lan type bond mode 802.3ad
#ip link delete bond-lan type bond mode 802.3ad
ip link set lan2 type bond_slave
ip link set lan3 type bond_slave

ip link set lan2 master bond-lan #加入名称为 bond-lan 的 bond 类型网卡
#ip link set lan2 nomaster bond-lan 
ip link set lan3 master bond-lan

#ifenslave -d bond-lan lan2 lan3

ip link set bond-lan up #启动该网卡
ifconfig lan2 down
ifconfig lan3 down
sleep 1
ifconfig lan2 up
ifconfig lan3 up