# Add autocore support for armvirt
sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.2/g' package/base-files/files/bin/config_generate

# => geodata
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat

# => golang 22.x
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang

# => dockerman
git clone https://github.com/lisaac/luci-app-dockerman.git package/lean/luci-app-dockerman

# => passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/lean/passwall2

# => 删除默认argon主题
rm -rf feeds/luci/themes/luci-theme-argon

# => 主题
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
