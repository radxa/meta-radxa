# meta-radxa

Radxa Yocto BSP layer

## Usage

```bash
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

## Use your own fork

1. Change the registry URL to your own repo when calling `bitbake-setup`
2. Change `meta-<vendor>\conf\<config template>.conf.json`'s source to your own repo
3. Optionally, add your own layer, and your own machine in the same config template

## Cheatsheet

All commands should be run after calling `init-build-env`.

### Switching to different machine/distro

```bash
# You can find currently enabled fragment under build/conf/toolcfg.conf
bitbake-config-build disable-fragment machine/<current_fragment>
bitbake-config-build enable-fragment machine/<new_fragment>
```

### Adding custom layer

```bash
git clone -b <branch> <git repo URL> ../layers/<layer name>
bitbake-layers add-layer ../layers/<layer name>
```
