# meta-radxa

Radxa Yocto BSP layer

## Usage

```
# Install bitbake-setup
sudo apt-get update
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

# Start building image
bitbake core-image-minimal
```

Platform-specific information, including the build dependencies, can be found
under the platform layer.

## Cheatsheet

### Switching to different machine/distro

```
# You can find currently enabled fragment under build/conf/toolcfg.conf
bitbake-config-build disable-fragment machine/<current_fragment>
bitbake-config-build enable-fragment machine/<new_fragment>
```
