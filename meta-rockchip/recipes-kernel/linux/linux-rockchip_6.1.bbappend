# Copyright (C) 2026, Radxa Computer (Shenzhen) Co.,Ltd.
# Released under the MIT license (see COPYING.MIT for the terms)

SRCREV = "${AUTOREV}"
SRC_URI = " \
	git://github.com/radxa/kernel.git;protocol=https;nobranch=1;branch=linux-6.1-stan-rkr4.1-buildroot; \
	file://0001-aic8800-fix-always-true-bssid-address-compare.patch \
	file://0001-MALI-bifrost-CSF-do-not-include-mali_csffw.bin-into-.patch \
"

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-rockchip_6.1:"
