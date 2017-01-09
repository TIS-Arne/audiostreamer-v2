################################################################################
#
# python-uritools
#
################################################################################

PYTHON_URITOOLS_VERSION = 2.0.0
PYTHON_URITOOLS_SOURCE = uritools-$(PYTHON_URITOOLS_VERSION).tar.gz
PYTHON_URITOOLS_SITE = https://pypi.python.org/packages/7d/c9/f6bd900266615785adbd3f6ab51b0259dcefba770535439e744302dd0a28
PYTHON_URITOOLS_SETUP_TYPE = setuptools
PYTHON_URITOOLS_LICENSE = MIT
PYTHON_URITOOLS_LICENSE_FILES = LICENSE
PYTHON_URITOOLS_DEPENDENCIES = python-ipaddress

$(eval $(python-package))
