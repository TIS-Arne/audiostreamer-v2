################################################################################
#
# python-discid
#
################################################################################

PYTHON_DISCID_VERSION = 1.1.0
PYTHON_DISCID_SOURCE = discid-$(PYTHON_DISCID_VERSION).tar.gz
PYTHON_DISCID_SITE = https://pypi.python.org/packages/39/30/0f4876a155b6e00093e7f4108aa9346c874158d33f489c61d8fecc2ab5a7
PYTHON_DISCID_SETUP_TYPE = distutils
PYTHON_DISCID_LICENSE = GNU Lesser General Public License v3 or later (LGPLv3+)
PYTHON_DISCID_LICENSE_FILES = COPYING
PYTHON_DISCID_DEPENDENCIES = libdiscid

$(eval $(python-package))
