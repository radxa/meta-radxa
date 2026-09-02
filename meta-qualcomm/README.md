# meta-qualcomm

Radxa Yocto BSP layer for Qualcomm devices

## Build dependency

The listed build dependencies are for reference only. The upstream may make changes
without notice. Please check the related documentation for up-to-date info.

```bash
# Install build dependencies
sudo apt-get update
# Upstream Yocto dependencies
# https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html#build-host-packages
sudo apt-get install -y build-essential chrpath cpio debianutils diffstat file gawk gcc git iputils-ping libacl1 libcrypt-dev locales python3 python3-git python3-jinja2 python3-pexpect python3-pip python3-subunit socat texinfo unzip wget xz-utils zstd
```

## Additional BSP image types

You can build following images with `bitbake` in addition to `core-image-minimal`

* `esp-qcom-fit-image`
* `esp-qcom-image`
* `initramfs-firmware-<product_id>-image`
* `initramfs-firmware-mega-image`
* `initramfs-kerneltest-image`
* `initramfs-kerneltest-full-image`
* `initramfs-rootfs-image`
* `initramfs-test-image`
* `initramfs-test-full-image`
* `initramfs-tiny-image`
