BR2_ENABLE_DEBUG=y
BR2_DL_DIR="$(BR2_EXTERNAL_NETBOX_PATH)/dl"
BR2_GLOBAL_PATCH_DIR="$(BR2_EXTERNAL_NETBOX_PATH)/patches"
BR2_TOOLCHAIN_EXTERNAL=y
BR2_TOOLCHAIN_EXTERNAL_BOOTLIN=y
BR2_TOOLCHAIN_EXTERNAL_GDB_SERVER_COPY=y
BR2_TARGET_GENERIC_HOSTNAME="$(NETBOX_PLAT)"
BR2_TARGET_GENERIC_ISSUE="NetBox - The Networking Toolbox"
BR2_INIT_NONE=y
BR2_ROOTFS_POST_BUILD_SCRIPT="$(BR2_EXTERNAL_NETBOX_PATH)/board/common/post-build.sh"
BR2_ROOTFS_POST_IMAGE_SCRIPT="$(BR2_EXTERNAL_NETBOX_PATH)/board/common/post-image.sh"
BR2_PACKAGE_BUSYBOX_CONFIG="$(BR2_EXTERNAL_NETBOX_PATH)/board/common/busybox.config"
BR2_PACKAGE_BUSYBOX_SHOW_OTHERS=y
BR2_TARGET_ROOTFS_SQUASHFS=y
BR2_PACKAGE_HOST_GENIMAGE=y
BR2_PACKAGE_HOST_SQUASHFS=y