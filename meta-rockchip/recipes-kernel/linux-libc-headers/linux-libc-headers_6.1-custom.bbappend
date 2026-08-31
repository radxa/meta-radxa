# Copyright (C) 2026, Radxa Computer (Shenzhen) Co.,Ltd.
# Released under the MIT license (see COPYING.MIT for the terms)

# Explicit SRCREV and shallow clone because they are just too big
BB_GIT_SHALLOW = "1"
SRCREV = "af558fa36b0a7fcd293ec7a8e8912b7fc8c25aef"
SRC_URI = " \
	git://github.com/radxa/kernel.git;protocol=https;nobranch=1;branch=linux-6.1-stan-rkr4.1-buildroot; \
"
