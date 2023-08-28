#modprobe bonding mode=0 miimon=100  #设置bonding模式为0，通用性较好，不依赖交换机协议mode=0 即mode balance-rr 而mode=4(802.3ad)
#miimon=100
#每100毫秒 (即0.1秒) 监测一次路连接状态，如果有一条线路不通就转入另一条线路； Linux的多网卡绑定功能使用的是内核中的"bonding"模块 #mode5和mode6不需要交换机端的设置，网卡能自动聚合。mode4需要支持802.3ad。mode0，mode2和mode3理论上需要静态聚合方式。mod=6（balance-alb）与mod=0的区别：mod=6，先把eth0流量占满

#ip link add bond-lan type bond mode balance-alb miimon=100
ip link add bond-lan type bond miimon 100 mode balance-rr xmit_hash_policy layer3+4
#ip link delete bond-lan type bond mode balance-alb
ip link set lan2 type bond_slave
ip link set lan3 type bond_slave


ip link set bond-lan up
ip link set dev lan2 master bond-lan
ip link set dev lan3 master bond-lan
#ip link set dev bond-lan address 00:11:22:33:44:58

#ip link set lan2 master bond-lan #加入名称为 bond-lan 的 bond 类型网卡
#ip link set dev lan2 nomaster
#ip link set lan3 master bond-lan

#ifenslave -d bond-lan lan2 lan3

#ip link set bond-lan up #启动该网卡
ifconfig lan2 down
ifconfig lan3 down
sleep 10
ifconfig lan2 up
ifconfig lan3 up