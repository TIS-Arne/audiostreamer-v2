GST1_PYTHON_VERSION = 1.10.2
GST1_PYTHON_SOURCE = gst-python-$(GST1_PYTHON_VERSION).tar.xz
GST1_PYTHON_SITE = https://gstreamer.freedesktop.org/src/gst-python
GST1_PYTHON_LICENSE = lgpl
GST1_PYTHON_LICENSE_FILES = COPYING
ifeq ($(BR2_PACKAGE_PYTHON),y)
GST1_PYTHON_DEPENDENCIES += python python-gobject gstreamer1
GST1_PYTHON_CONF_ENV = PYTHON_INCLUDES="`$(STAGING_DIR)/usr/bin/python2-config --includes`"
GST1_PYTHON_CONF_ENV += PYTHON_LIBS="-L`$(STAGING_DIR)/usr/bin/python2-config --prefix`/lib `$(STAGING_DIR)/usr/bin/python2-config --libs`"
GST1_PYTHON_CONF_ENV += PYTHON_LIB_LOC="`$(STAGING_DIR)/usr/bin/python2-config --prefix`/lib"
else
GST1_PYTHON_DEPENDENCIES += python3 python-gobject gstreamer1
GST1_PYTHON_CONF_ENV = PYTHON_INCLUDES="`$(STAGING_DIR)/usr/bin/python3-config --includes`"
GST1_PYTHON_CONF_ENV += PYTHON_LIBS="-L`$(STAGING_DIR)/usr/bin/python3-config --prefix`/lib `$(STAGING_DIR)/usr/bin/python3-config --libs`"
GST1_PYTHON_CONF_ENV += PYTHON_LIB_LOC="`$(STAGING_DIR)/usr/bin/python3-config --prefix`/lib"
endif
GST1_PYTHON_AUTORECONF = YES

$(eval $(autotools-package))
