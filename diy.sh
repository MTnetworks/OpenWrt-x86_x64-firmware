#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

run: git clone https://github.com/Leo-Jo-My/luci-theme-opentomato.git package/lean/luci-theme-opentomato
run: cd openwrt && ./scripts/feeds update -a && ./scripts/feeds install -a
