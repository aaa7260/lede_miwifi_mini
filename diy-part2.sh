#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
#sed -i 's/PKG_VERSION:=2.1.4/PKG_VERSION:=2.3.3/g' package/feeds/cups/cups/Makefile
#sed -i '/^PKG_SOURCE_UR/d' package/feeds/cups/cups/Makefile
#sed -i '/^PKG_MD5SUM/d' package/feeds/cups/cups/Makefile
sed -i '/^PKG_SOURCE_UR/d' feeds/cups/cups/Makefile

# cp -f $GITHUB_WORKSPACE/cups-2.3.3-source.tar.gz dl/cups-2.3.3-source.tar.gz
#rm -rf package/feeds/cups/cups/patch
#sed -i 's/\/$(PKG_VERSION)/\/release-$(PKG_VERSION)\/$(PKG_SOURCE)/g' package/feeds/cups/cups/Makefile
#https://github.com/apple/cups/releases/download/v2.3.3/cups-2.3.3-source.tar.gz
#https://github.com/apple/cups/releases/download/release-2.1.4/cups-2.1.4-source.tar.gz
#sed -i 's/\/$(PKG_VERSION)/\/release-2.1.4/g' package/feeds/cups/cups/Makefile
