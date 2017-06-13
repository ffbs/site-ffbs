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

	# The gluon-ebtables-source-filter package adds an additional layer-2 filter ruleset to prevent unreasonable traffic entering the network via the nodes. Unreasonable means traffic entering the mesh via a node which source IP does not belong to the configured IP space.
	# http://gluon.readthedocs.io/en/v2017.1/package/gluon-ebtables-source-filter.html?highlight=gluon-ebtables-source-filter
	gluon-ebtables-source-filter \

	haveged
	
#	Removed packages
#	gluon-config-mode-contact-info-bs \
#	gluon-web-portconfig \
#	gluon-fffd-wifi-aliases \


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
