# meta-radxa

Radxa Yocto BSP layer

## Usage

The listed build dependencies are for reference only. The upstream may make changes
without notice. Please check the related documentation for up-to-date info.

```
# Install build dependencies
sudo apt-get update
# Upstream Yocto dependencies
# https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html#build-host-packages
sudo apt-get install -y build-essential chrpath cpio debianutils diffstat file gawk gcc git iputils-ping libacl1 libcrypt-dev locales python3 python3-git python3-jinja2 python3-pexpect python3-pip python3-subunit socat texinfo unzip wget xz-utils zstd

# MediaTek Yocto dependencies
# https://genio.mediatek.com/doc/iot-yocto/latest/sw/yocto/get-started/env-setup/build-env-linux.html
sudo apt-get install -y gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libelf-dev libsdl1.2-dev lz4 pylint xterm python3-subunit mesa-common-dev libstdc++-12-dev libssl-dev

# Install bitbake-setup
sudo apt-get install -y pipx
pipx ensurepath
export PATH="$HOME/.local/bin:$PATH"
pipx install bitbake-setup

# Interactively create a new workspace
bitbake-setup \
  --setting default registry 'git://github.com/radxa/meta-radxa.git;protocol=https;branch=main;rev=main' \
  init

# Example for creating workspace non-interactively
# The required parameters will be printed after answering all questions in the
# interactive setup
# bitbake-setup --setting default registry 'git://github.com/radxa/meta-radxa.git;protocol=https;branch=main;rev=main' init --non-interactive poky-rockchip poky distro/poky machine/rock-5b

# Load build environment
source bitbake-builds/*/build/init-build-env

# Stare building image
bitbake core-image-minimal
```
