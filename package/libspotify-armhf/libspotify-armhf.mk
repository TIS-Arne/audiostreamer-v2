################################################################################
#
# libspotify-armhf
#
################################################################################

LIBSPOTIFY_ARMHF_VERSION = 12.1.103
LIBSPOTIFY_ARMHF_SOURCE = libspotify_$(LIBSPOTIFY_ARMHF_VERSION).orig-armhf.tar.gz
LIBSPOTIFY_ARMHF_SITE = https://github.com/mopidy/libspotify-deb/raw/master
LIBSPOTIFY_ARMHF_LICENSE = Proprietary
LIBSPOTIFY_ARMHF_LICENSE_FILES = LICENSE licenses.xhtml
LIBSPOTIFY_ARMHF_INSTALL_STAGING = YES


define LIBSPOTIFY_ARMHF_BUILD_CMDS
	true
endef

define LIBSPOTIFY_ARMHF_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0644 $(@D)/include/libspotify/api.h $(STAGING_DIR)/usr/include/libspotify/api.h
	$(INSTALL) -D -m 0644 $(@D)/lib/pkgconfig/libspotify.pc $(STAGING_DIR)/usr/lib/pkgconfig/libspotify.pc
	$(INSTALL) -D -m 0755 $(@D)/lib/libspotify.so* $(STAGING_DIR)/usr/lib
endef

define LIBSPOTIFY_ARMHF_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/lib/libspotify.so* $(TARGET_DIR)/usr/lib
endef


$(eval $(generic-package))
