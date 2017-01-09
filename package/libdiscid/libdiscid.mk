################################################################################
#
# libdiscid
#
################################################################################

LIBDISCID_VERSION = 0.6.1
LIBDISCID_SOURCE = libdiscid-$(LIBDISCID_VERSION).tar.gz
LIBDISCID_SITE = http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid
LIBDISCID_INSTALL_STAGING = YES
LIBDISCID_INSTALL_TARGET = YES
LIBDISCID_CONF_OPTS =
LIBDISCID_DEPENDENCIES = host-pkgconf

$(eval $(cmake-package))
