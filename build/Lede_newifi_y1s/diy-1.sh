#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 基本不需要添加啥插件了,我搜集了各位大神的插件都集成一个软件包直接打入源码里面了
# 要了解增加了什么东西，就到我的专用软件包里面看看看吧，如果还是没有你需要的插件，请不要一下子就拉取别人的插件包
# 相同的文件都拉一起，因为有一些可能还是其他大神修改过的容易造成编译错误的
# 想要什么插件就单独的拉取什么插件就好，或者告诉我，我把插件放我的插件包就行了
# 软件包地址：https://github.com/281677160/openwrt-package
# 拉取插件请看《各种命令的简单介绍》第4条、第5条说明,不管大神还是新手请认真的看看,再次强调请不要一下子就拉取别人一堆插件的插件包,容易造成编译错误的
#

# 使用源码自带passwall等出国软件
echo src-git helloworld https://github.com/fw876/helloworld >> feeds.conf.default
#echo src-git OpenClash https://github.com/vernesong/OpenClash.git  >> feeds.conf.default
echo src-git opentopd  https://github.com/281677160/AdGuardHome.git  >> feeds.conf.default
#echo src-git opentopd  https://github.com/rufengsuixing/luci-app-adguardhome.git >> feeds.conf.default
#echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' >>feeds.conf.default
#echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default


#还有命令创ttyd
#自己拉去master其中tree/master 换成trunk
#svn co https://github.com/281677160/openwrt-package/tree/master/feeds/luci/applications/luci-app-smartdns package/luci-app-smartdns
#svn co https://github.com/281677160/openwrt-package/trunk/feeds/luci/applications/luci-app-smartdns package/luci-app-smartdns

#以下没有验证
#cat >$NETIP <<-EOF
#uci set network.lan.ipaddr='192.168.2.2'                                    # IPv4 地址(openwrt后台地址)
#uci set network.lan.netmask='255.255.255.0'                                 # IPv4 子网掩码
#uci set network.lan.gateway='192.168.2.1'                                   # IPv4 网关
#uci set network.lan.broadcast='192.168.2.255'                               # IPv4 广播
#uci set network.lan.dns='223.5.5.5 114.114.114.114'                         # DNS(多个DNS要用空格分开)
#uci set network.lan.delegate='0'                                            # 去掉LAN口使用内置的 IPv6 管理
#uci commit network                                                          # 不要删除跟注释,除非上面全部删除或注释掉了
#uci set dhcp.lan.ignore='1'                                                 # 关闭DHCP功能
#uci commit dhcp                                                             # 跟‘关闭DHCP功能’联动,同时启用或者删除跟注释
#uci set system.@system[0].hostname='OpenWrt-123'                            # 修改主机名称为OpenWrt-123
#EOF


#sed -i "s/OpenWrt /${Author} compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ           # 增加个性名字 ${Author} 默认为你的github帐号

#sed -i 's/PATCHVER:=4.14/PATCHVER:=4.9/g' target/linux/x86/Makefile                               # x86机型,默认内核4.14，修改内核为4.9
