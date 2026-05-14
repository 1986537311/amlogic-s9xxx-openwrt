#!/bin/bash
# 统一添加满配插件 + 8G分区 不锁内核
sed -i 's/CONFIG_KERNEL_PARTSIZE=.*/CONFIG_KERNEL_PARTSIZE=128/' .config
sed -i 's/CONFIG_ROOTFS_PARTSIZE=.*/CONFIG_ROOTFS_PARTSIZE=8192/' .config

# 主题美化
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
echo "CONFIG_PACKAGE_luci-app-argon-config=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-design=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-netgear=y" >> .config

# iStore应用商店
echo "CONFIG_PACKAGE_luci-app-store=y" >> .config

# 代理插件全家桶
echo "CONFIG_PACKAGE_luci-app-openclash=y" >> .config
echo "CONFIG_PACKAGE_luci-app-passwall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ssr-plus=y" >> .config
echo "CONFIG_PACKAGE_luci-app-zerotier=y" >> .config

# 去广告DNS系列
echo "CONFIG_PACKAGE_luci-app-adguardhome=y" >> .config
echo "CONFIG_PACKAGE_luci-app-mosdns=y" >> .config
echo "CONFIG_PACKAGE_luci-app-smartdns=y" >> .config

# 多WAN网络优化
echo "CONFIG_PACKAGE_luci-app-mwan3=y" >> .config
echo "CONFIG_PACKAGE_luci-app-turboacc=y" >> .config

# 网盘下载+文件共享
echo "CONFIG_PACKAGE_luci-app-alist=y" >> .config
echo "CONFIG_PACKAGE_luci-app-qbittorrent=y" >> .config
echo "CONFIG_PACKAGE_luci-app-samba4=y" >> .config

# 内网穿透
echo "CONFIG_PACKAGE_luci-app-frpc=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ddnsto=y" >> .config

# Docker容器
echo "CONFIG_PACKAGE_docker=y" >> .config
echo "CONFIG_PACKAGE_luci-app-dockerman=y" >> .config

# 系统监控工具
echo "CONFIG_PACKAGE_luci-app-ttyd=y" >> .config
echo "CONFIG_PACKAGE_luci-app-netdata=y" >> .config
