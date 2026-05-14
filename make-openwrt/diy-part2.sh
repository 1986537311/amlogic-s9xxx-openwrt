#!/bin/bash
# 统一分区：内核128M 根分区8G
sed -i 's/CONFIG_KERNEL_PARTSIZE=.*/CONFIG_KERNEL_PARTSIZE=128/' .config
sed -i 's/CONFIG_ROOTFS_PARTSIZE=.*/CONFIG_ROOTFS_PARTSIZE=8192/' .config

# ========== 美化主题全量 ==========
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
echo "CONFIG_PACKAGE_luci-app-argon-config=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-design=y" >> .config
echo "CONFIG_PACKAGE_luci-app-design-config=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-netgear=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-material=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-bootstrap=y" >> .config

# ========== iStore应用商店 ==========
echo "CONFIG_PACKAGE_luci-app-store=y" >> .config
echo "CONFIG_PACKAGE_luci-compat=y" >> .config
echo "CONFIG_PACKAGE_luci-lib-store=y" >> .config
echo "CONFIG_PACKAGE_luci-i18n-store-zh-cn=y" >> .config

# ========== 代理/翻墙全家桶 ==========
echo "CONFIG_PACKAGE_luci-app-openclash=y" >> .config
echo "CONFIG_PACKAGE_luci-app-passwall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-passwall2=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ssr-plus=y" >> .config
echo "CONFIG_PACKAGE_luci-app-homeproxy=y" >> .config
echo "CONFIG_PACKAGE_luci-app-trojan=y" >> .config
echo "CONFIG_PACKAGE_luci-app-v2raya=y" >> .config
echo "CONFIG_PACKAGE_luci-app-zerotier=y" >> .config
echo "CONFIG_PACKAGE_luci-app-wireguard=y" >> .config
echo "CONFIG_PACKAGE_luci-app-openvpn=y" >> .config
echo "CONFIG_PACKAGE_luci-app-softether=y" >> .config

# ========== DNS去广告+加密全套 ==========
echo "CONFIG_PACKAGE_luci-app-adguardhome=y" >> .config
echo "CONFIG_PACKAGE_luci-app-adblock=y" >> .config
echo "CONFIG_PACKAGE_luci-app-mosdns=y" >> .config
echo "CONFIG_PACKAGE_luci-app-smartdns=y" >> .config
echo "CONFIG_PACKAGE_luci-app-dnscrypt-proxy2=y" >> .config
echo "CONFIG_PACKAGE_luci-app-cloudflared=y" >> .config
echo "CONFIG_PACKAGE_luci-app-dnsforwarder=y" >> .config
echo "CONFIG_PACKAGE_luci-app-doh-client=y" >> .config

# ========== 多WAN/网络加速/QOS游戏优化 ==========
echo "CONFIG_PACKAGE_luci-app-mwan3=y" >> .config
echo "CONFIG_PACKAGE_luci-app-mwan3helper=y" >> .config
echo "CONFIG_PACKAGE_luci-app-sqm=y" >> .config
echo "CONFIG_PACKAGE_luci-app-turboacc=y" >> .config
echo "CONFIG_PACKAGE_luci-app-flowoffload=y" >> .config
echo "CONFIG_PACKAGE_luci-app-bbrmod=y" >> .config
echo "CONFIG_PACKAGE_luci-app-cake-qos=y" >> .config
echo "CONFIG_PACKAGE_luci-app-nft-qos=y" >> .config
echo "CONFIG_PACKAGE_luci-app-qos-gargoyle=y" >> .config
echo "CONFIG_PACKAGE_luci-app-upnp=y" >> .config
echo "CONFIG_PACKAGE_luci-app-arpbind=y" >> .config
echo "CONFIG_PACKAGE_luci-app-wol=y" >> .config

# ========== 网盘/下载/媒体共享/手机备份 ==========
echo "CONFIG_PACKAGE_luci-app-alist=y" >> .config
echo "CONFIG_PACKAGE_luci-app-aria2=y" >> .config
echo "CONFIG_PACKAGE_luci-app-qbittorrent=y" >> .config
echo "CONFIG_PACKAGE_luci-app-transmission=y" >> .config
echo "CONFIG_PACKAGE_luci-app-aliyundrive-webdav=y" >> .config
echo "CONFIG_PACKAGE_luci-app-aliyundrive-fuse=y" >> .config
echo "CONFIG_PACKAGE_luci-app-samba4=y" >> .config
echo "CONFIG_PACKAGE_luci-app-webdav=y" >> .config
echo "CONFIG_PACKAGE_luci-app-vsftpd=y" >> .config
echo "CONFIG_PACKAGE_luci-app-minidlna=y" >> .config
echo "CONFIG_PACKAGE_luci-app-airplay2=y" >> .config
echo "CONFIG_PACKAGE_luci-app-hd-idle=y" >> .config
echo "CONFIG_PACKAGE_luci-app-diskman=y" >> .config

# ========== 内网穿透/DDNS远程管理全系列 ==========
echo "CONFIG_PACKAGE_luci-app-frpc=y" >> .config
echo "CONFIG_PACKAGE_luci-app-frps=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ddns=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ddnsto=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ddns-go=y" >> .config
echo "CONFIG_PACKAGE_luci-app-cpolar=y" >> .config
echo "CONFIG_PACKAGE_luci-app-npc=y" >> .config

# ========== Docker容器环境 ==========
echo "CONFIG_PACKAGE_docker=y" >> .config
echo "CONFIG_PACKAGE_dockerd=y" >> .config
echo "CONFIG_PACKAGE_docker-compose=y" >> .config
echo "CONFIG_PACKAGE_luci-app-dockerman=y" >> .config

# ========== 系统监控/运维/调试工具 ==========
echo "CONFIG_PACKAGE_luci-app-ttyd=y" >> .config
echo "CONFIG_PACKAGE_luci-app-netdata=y" >> .config
echo "CONFIG_PACKAGE_luci-app-nlbwmon=y" >> .config
echo "CONFIG_PACKAGE_luci-app-statistics=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ramfree=y" >> .config
echo "CONFIG_PACKAGE_luci-app-htop=y" >> .config
echo "CONFIG_PACKAGE_luci-app-dmesg=y" >> .config
echo "CONFIG_PACKAGE_luci-app-filetransfer=y" >> .config
echo "CONFIG_PACKAGE_luci-app-webadmin=y" >> .config
echo "CONFIG_PACKAGE_luci-app-vlmcsd=y" >> .config
echo "CONFIG_PACKAGE_luci-app-onliner=y" >> .config

# ========== 全格式USB存储驱动 ==========
echo "CONFIG_PACKAGE_kmod-usb-storage=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-storage-uas=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-ext4=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-ntfs=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-vfat=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-exfat=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-xfs=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-btrfs=y" >> .config
echo "CONFIG_PACKAGE_block-mount=y" >> .config

# ========== 智能家居/打印共享 ==========
echo "CONFIG_PACKAGE_luci-app-homeassistant=y" >> .config
echo "CONFIG_PACKAGE_luci-app-cups=y" >> .config

# ========== 基础依赖/运行工具 ==========
echo "CONFIG_PACKAGE_curl=y" >> .config
echo "CONFIG_PACKAGE_wget=y" >> .config
echo "CONFIG_PACKAGE_wget-ssl=y" >> .config
echo "CONFIG_PACKAGE_python3=y" >> .config
echo "CONFIG_PACKAGE_python3-pip=y" >> .config
echo "CONFIG_PACKAGE_jq=y" >> .config
echo "CONFIG_PACKAGE_nano=y" >> .config
echo "CONFIG_PACKAGE_htop=y" >> .config
echo "CONFIG_PACKAGE_iperf3=y" >> .config
echo "CONFIG_PACKAGE_zsh=y" >> .config
