################################################################################
#
# python-pylast
#
################################################################################

PYTHON_PYLAST_VERSION = 1.6.0
PYTHON_PYLAST_SOURCE = pylast-$(PYTHON_PYLAST_VERSION).tar.gz
PYTHON_PYLAST_SITE = https://pypi.python.org/packages/42/71/85c28b2d373eee3592d6f079e556df4a28d5c133c2ba484d7311dc9a746c
PYTHON_PYLAST_SETUP_TYPE = setuptools
PYTHON_PYLAST_LICENSE = Apache-2.0
PYTHON_PYLAST_LICENSE_FILES = COPYING
PYTHON_PYLAST_DEPENDENCIES = python-six

$(eval $(python-package))
