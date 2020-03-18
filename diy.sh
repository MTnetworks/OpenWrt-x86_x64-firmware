#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#修改默认 IP为192.168.10.1
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#删除原主题	
#rm -rf package/lean/luci-theme-argon
#添加新的主题
#git clone https://github.com/sypopo/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
#取消bootstrap为默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#删除默认密码
#sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings


#-更新feeds
run: cd openwrt && ./scripts/feeds update -a

#安装feeds
run: cd openwrt && ./scripts/feeds install -a
