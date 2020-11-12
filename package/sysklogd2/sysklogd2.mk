################################################################################
#
# sysklogd
#
################################################################################

SYSKLOGD2_VERSION = 2.1.2
SYSKLOGD2_SOURCE = sysklogd-$(SYSKLOGD2_VERSION).tar.gz
SYSKLOGD2_SITE = https://github.com/troglobit/sysklogd/releases/download/v$(SYSKLOGD2_VERSION)
SYSKLOGD2_LICENSE = BSD-3-Clause
SYSKLOGD2_CONF_OPTS = --exec-prefix=/

define SYSKLOGD2_INSTALL_SAMPLE_CONFIG
	$(INSTALL) -D -m 0644 $(BR2_EXTERNAL_NETBOX_PATH)/package/sysklogd2/syslog.conf \
                $(TARGET_DIR)/etc/syslog.conf
endef

SYSKLOGD2_POST_INSTALL_TARGET_HOOKS += SYSKLOGD2_INSTALL_SAMPLE_CONFIG

define SYSKLOGD2_INSTALL_FINIT_SVC
	$(INSTALL) -D -m 0644 $(BR2_EXTERNAL_NETBOX_PATH)/package/sysklogd2/sysklogd.svc \
		$(TARGET_DIR)/etc/finit.d/available/sysklogd.conf
	ln -sf /etc/finit.d/available/sysklogd.conf $(FINIT_D)/enabled/sysklogd.conf
endef

SYSKLOGD2_POST_INSTALL_TARGET_HOOKS += SYSKLOGD2_INSTALL_FINIT_SVC

$(eval $(autotools-package))