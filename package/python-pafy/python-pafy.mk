################################################################################
#
# python-pafy
#
################################################################################

PYTHON_PAFY_VERSION = 0.5.2
PYTHON_PAFY_SOURCE = pafy-$(PYTHON_PAFY_VERSION).tar.gz
PYTHON_PAFY_SITE = https://pypi.python.org/packages/0d/f1/765c5a2e9264ab98b5515501e794962a56157e1809c96c7445d8c2cef136
PYTHON_PAFY_SETUP_TYPE = setuptools
PYTHON_PAFY_LICENSE = GNU Lesser General Public License v3 (LGPLv3)

$(eval $(python-package))
