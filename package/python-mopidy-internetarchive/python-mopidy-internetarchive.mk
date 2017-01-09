################################################################################
#
# python-mopidy-internetarchive
#
################################################################################

PYTHON_MOPIDY_INTERNETARCHIVE_VERSION = 2.0.0
PYTHON_MOPIDY_INTERNETARCHIVE_SOURCE = Mopidy-InternetArchive-$(PYTHON_MOPIDY_INTERNETARCHIVE_VERSION).tar.gz
PYTHON_MOPIDY_INTERNETARCHIVE_SITE = https://pypi.python.org/packages/05/ca/d5fd5a3798ae4bd4f607892cab947a2655a1674963a8a0da85cd93fc71dd
PYTHON_MOPIDY_INTERNETARCHIVE_SETUP_TYPE = setuptools
PYTHON_MOPIDY_INTERNETARCHIVE_LICENSE = Apache-2.0
PYTHON_MOPIDY_INTERNETARCHIVE_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_INTERNETARCHIVE_DEPENDENCIES = python-setuptools python-mopidy python-pykka python-requests python-cachetools python-uritools

$(eval $(python-package))
