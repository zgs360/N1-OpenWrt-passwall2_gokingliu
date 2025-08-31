# Add autocore support for armvirt
sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile

# Modify default IP
sed -i 's/192.168.1.1/10.128.10.11/g' package/base-files/files/bin/config_generate

git_sparse_clone master https://github.com/vernesong/OpenClash luci-app-openclash

# => passwall2
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git -b main package/passwall_package
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2

