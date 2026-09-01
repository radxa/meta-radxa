# Copyright (C) 2026, Radxa Computer (Shenzhen) Co.,Ltd.
# Released under the MIT license (see COPYING.MIT for the terms)

# Make core-image-minimal behave like rity-bringup-image so the documented
# bitbake core-image-minimal command produces a flashable RITY image.
# require looks on BBPATH (layer roots), not the sibling recipe directory.
require recipes-bringup/images/rity-bringup-image.bb
