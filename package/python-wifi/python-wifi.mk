################################################################################
#
# python-wifi
#
################################################################################

PYTHON_WIFI_VERSION = 0.3.8
PYTHON_WIFI_SOURCE = wifi-$(PYTHON_WIFI_VERSION).tar.gz
PYTHON_WIFI_SITE = https://pypi.python.org/packages/fe/a9/d026afe8a400dd40122385cd690e4fff4d574ed16f5c3a0f5e3921bfd383
PYTHON_WIFI_SETUP_TYPE = setuptools
PYTHON_WIFI_LICENSE = BSD
PYTHON_WIFI_LICENSE_FILES = LICENSE

$(eval $(python-package))
