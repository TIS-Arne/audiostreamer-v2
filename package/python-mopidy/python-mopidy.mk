################################################################################
#
# python-mopidy
#
################################################################################

PYTHON_MOPIDY_VERSION = 2.0.1
PYTHON_MOPIDY_SOURCE = Mopidy-$(PYTHON_MOPIDY_VERSION).tar.gz
PYTHON_MOPIDY_SITE = https://pypi.python.org/packages/4f/5d/07c06dc2cacc15edc658bd8501435f067938ede429423a2acdb9e9beb8da
PYTHON_MOPIDY_SETUP_TYPE = setuptools
PYTHON_MOPIDY_LICENSE = Apache-2.0
PYTHON_MOPIDY_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_DEPENDENCIES = python-pykka python-requests python-setuptools python-tornado python-gobject

$(eval $(python-package))
