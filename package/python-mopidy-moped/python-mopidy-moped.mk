################################################################################
#
# python-mopidy-moped
#
################################################################################

PYTHON_MOPIDY_MOPED_VERSION = 0.7.0
PYTHON_MOPIDY_MOPED_SOURCE = Mopidy-Moped-$(PYTHON_MOPIDY_MOPED_VERSION).tar.gz
PYTHON_MOPIDY_MOPED_SITE = https://pypi.python.org/packages/e8/5e/63d24a5b867cddb9ae0d63c61248c2d16266988aff531eb34907c85bf2b6
PYTHON_MOPIDY_MOPED_SETUP_TYPE = setuptools
PYTHON_MOPIDY_MOPED_LICENSE = MIT
PYTHON_MOPIDY_MOPED_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_MOPED_DEPENDENCIES = python-setuptools python-mopidy

$(eval $(python-package))
