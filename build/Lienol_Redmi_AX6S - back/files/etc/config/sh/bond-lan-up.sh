#ip link set bond-lan up #启动该网卡
ifconfig lan2 down
ifconfig lan3 down
sleep 1
ifconfig lan2 up
ifconfig lan3 up
