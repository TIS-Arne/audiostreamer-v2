################################################################################
#
# python-pyspotify
#
################################################################################

PYTHON_PYSPOTIFY_VERSION = 2.0.5
PYTHON_PYSPOTIFY_SOURCE = pyspotify-$(PYTHON_PYSPOTIFY_VERSION).tar.gz
PYTHON_PYSPOTIFY_SITE = https://pypi.python.org/packages/5b/ce/7a6520ea348023762d5b138e85809198626c758ee8053bfc534438ad8bad
PYTHON_PYSPOTIFY_SETUP_TYPE = setuptools
PYTHON_PYSPOTIFY_LICENSE = Apache-2.0
PYTHON_PYSPOTIFY_LICENSE_FILES = LICENSE
PYTHON_PYSPOTIFY_DEPENDENCIES = host-python-cffi libspotify-armhf

$(eval $(python-package))
