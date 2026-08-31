# Copyright (C) 2026, Radxa Computer (Shenzhen) Co.,Ltd.
# Released under the MIT license (see COPYING.MIT for the terms)

SRCREV = "${AUTOREV}"
SRCREV_rkbin = "${AUTOREV}"
SRC_URI = " \
	git://github.com/radxa/u-boot.git;protocol=https;branch=next-dev-buildroot; \
	git://github.com/radxa/rkbin.git;protocol=https;branch=develop-v2024.10;name=rkbin;destsuffix=rkbin; \
"
