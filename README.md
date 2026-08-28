This README file contains information on the contents of the meta-radxa layer.

Please see the corresponding sections below for details.

Dependencies
============

  URI: <first dependency>
  branch: <branch name>

  URI: <second dependency>
  branch: <branch name>

  .
  .
  .

Patches
=======

Please submit any patches against the meta-radxa layer to the xxxx mailing list (xxxx@zzzz.org)
and cc: the maintainer:

Maintainer: XXX YYYYYY <xxx.yyyyyy@zzzzz.com>

Table of Contents
=================

  I. Adding the meta-radxa layer to your build
 II. Misc


I. Adding the meta-radxa layer to your build
=================================================

Run 'bitbake-layers add-layer meta-radxa'

II. Misc
========

```
sudo apt-get update
sudo apt-get install -y build-essential chrpath cpio debianutils diffstat file gawk gcc git iputils-ping libacl1 libcrypt-dev locales python3 python3-git python3-jinja2 python3-pexpect python3-pip python3-subunit socat texinfo unzip wget xz-utils zstd

sudo apt-get install -y pipx
pipx ensurepath
export PATH="$HOME/.local/bin:$PATH"
pipx install bitbake-setup

bitbake-setup init --non-interactive poky-wrynose poky distro/poky machine/qemux86-64

source bitbake-builds/poky-wrynose/build/init-build-env

git clone -b wrynose https://git.openembedded.org/meta-openembedded ../layers/meta-openembedded
bitbake-layers add-layer ../layers/meta-openembedded/meta-oe
git clone -b wrynose https://github.com/JeffyCN/meta-rockchip ../layers/meta-rockchip
bitbake-layers add-layer ../layers/meta-rockchip
git clone -b main https://github.com/radxa/meta-radxa ../layers/meta-radxa
bitbake-layers add-layer ../layers/meta-radxa

cat << EOF | tee -a conf/local.conf
WARN_QA:remove = "patch-fuzz"
ERROR_QA:remove = "patch-status license-format"
EOF

bitbake-config-build disable-fragment machine/qemux86-64
bitbake-config-build enable-fragment machine/rock-5b

bitbake core-image-minimal
```
