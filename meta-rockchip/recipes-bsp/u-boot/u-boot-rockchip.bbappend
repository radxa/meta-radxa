# Copyright (C) 2026, Radxa Computer (Shenzhen) Co.,Ltd.
# Released under the MIT license (see COPYING.MIT for the terms)

# Explicit SRCREV and shallow clone because they are just too big
BB_GIT_SHALLOW = "1"
SRCREV = "3c60a711e61015c1a61247837afbeaa85bd7fbf2"
SRCREV_rkbin = "${AUTOREV}"
SRC_URI = " \
	git://github.com/radxa/u-boot.git;protocol=https;branch=next-dev-buildroot; \
	git://github.com/radxa/rkbin.git;protocol=https;branch=develop-v2024.10;name=rkbin;destsuffix=rkbin; \
"
