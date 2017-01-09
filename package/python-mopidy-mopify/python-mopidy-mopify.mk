################################################################################
#
# python-mopidy-mopify
#
################################################################################

PYTHON_MOPIDY_MOPIFY_VERSION = 1.6.0
PYTHON_MOPIDY_MOPIFY_SOURCE = Mopidy-Mopify-$(PYTHON_MOPIDY_MOPIFY_VERSION).tar.gz
PYTHON_MOPIDY_MOPIFY_SITE = https://pypi.python.org/packages/42/78/d3056e8a3f1a804381e6d24a52fc7a3c23d0517e554c8dbd893b6d0ed0d6
PYTHON_MOPIDY_MOPIFY_SETUP_TYPE = setuptools
PYTHON_MOPIDY_MOPIFY_LICENSE = Apache-2.0
PYTHON_MOPIDY_MOPIFY_DEPENDENCIES = python-setuptools python-mopidy python-configobj

$(eval $(python-package))
