################################################################################
#
# cdparanoia
#
################################################################################

CDPARANOIA_VERSION = 19589
CDPARANOIA_SITE = https://svn.xiph.org/trunk/cdparanoia
CDPARANOIA_SITE_METHOD = svn
CDPARANOIA_INSTALL_STAGING = YES
CDPARANOIA_INSTALL_TARGET = YES
CDPARANOIA_DEPENDENCIES = host-pkgconf
CDPARANOIA_AUTORECONF = YES

CDPARANOIA_CONF_ENV = CC=

CDPARANOIA_CONF_OPTS = \
	--bindir=$(STAGING_DIR)/usr/bin \
	--mandir=$(STAGING_DIR)/usr/man \
	--includedir=$(STAGING_DIR)/usr/include \
	--libdir=$(STAGING_DIR)/usr/lib 

$(eval $(autotools-package))


