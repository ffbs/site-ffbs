GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-wifi-config \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page-bs \
	gluon-web-private-wifi \
	iwinfo \
	iptables \
	gluon-fffd-wifi-aliases \
	haveged
	
#	Removed packages
#	gluon-config-mode-contact-info-bs \
#	gluon-web-portconfig \


# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
# support acpi shutdown for openwrt as VM
GLUON_SITE_PACKAGES += \
	kmod-button-hotplug
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
# support acpi shutdown for openwrt as VM
GLUON_SITE_PACKAGES += \
	kmod-button-hotplug
endif


DEFAULT_GLUON_RELEASE := $(shell ${GLUON_SITEDIR}/getRelease.sh)-$(shell date '+%Y%m%d')-snapshot

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_REGION ?= eu
GLUON_LANGS ?= en de
