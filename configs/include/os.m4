dnl Include platform-specific overlay if plat_overlay is set
format(`BR2_ROOTFS_OVERLAY="$(BR2_EXTERNAL_NETBOX_PATH)/board/common/rootfs%s', ifelse(os_plat_overlay, `y',` $(BR2_EXTERNAL_NETBOX_PATH)/board/$(NETBOX_PLAT)/rootfs"', `"'))
BR2_LINUX_KERNEL=y
BR2_LINUX_KERNEL_CUSTOM_VERSION=y
BR2_LINUX_KERNEL_CUSTOM_VERSION_VALUE="5.13.5"
BR2_LINUX_KERNEL_USE_CUSTOM_CONFIG=y
BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE="$(BR2_EXTERNAL_NETBOX_PATH)/board/$(NETBOX_PLAT)/linux_defconfig"
BR2_LINUX_KERNEL_INSTALL_TARGET=y

dnl OS profile selects the following packages
NETBOX_TYPE_OS=y
BR2_PACKAGE_TETRIS=y
BR2_PACKAGE_FINIT=y
BR2_PACKAGE_DNSMASQ=y
BR2_PACKAGE_DROPBEAR=y
BR2_PACKAGE_ETHTOOL=y
BR2_PACKAGE_EVTEST=y
BR2_PACKAGE_INADYN=y
BR2_PACKAGE_IPERF=y
BR2_PACKAGE_IPROUTE2=y
BR2_PACKAGE_LIBCURL=y
BR2_PACKAGE_LIBGPIOD=y
BR2_PACKAGE_LIBGPIOD_TOOLS=y
BR2_PACKAGE_LIBNL=y
BR2_PACKAGE_LLDPD=y
BR2_PACKAGE_LM_SENSORS=y
BR2_PACKAGE_MCJOIN=y
BR2_PACKAGE_MDIO_TOOLS=y
BR2_PACKAGE_MG=y
BR2_PACKAGE_NEMESIS=y
BR2_PACKAGE_NETCALC=y
BR2_PACKAGE_NFTABLES=y
BR2_PACKAGE_QUAGGA=y
BR2_PACKAGE_QUAGGA_ZEBRA=y
BR2_PACKAGE_QUAGGA_ISISD=y
BR2_PACKAGE_QUAGGA_OSPFD=y
BR2_PACKAGE_QUAGGA_OSPF6D=y
BR2_PACKAGE_QUAGGA_RIPD=y
BR2_PACKAGE_QUAGGA_RIPNGD=y
BR2_PACKAGE_QUAGGA_VTYSH=y
BR2_PACKAGE_SMCROUTE=y
BR2_PACKAGE_SOCAT=y
BR2_PACKAGE_SSDP_RESPONDER=y
BR2_PACKAGE_STRESS_NG=y
BR2_PACKAGE_SYSKLOGD=y
BR2_PACKAGE_SYSKLOGD_LOGGER=y
BR2_PACKAGE_TCPDUMP=y
BR2_PACKAGE_WATCHDOGD=y
