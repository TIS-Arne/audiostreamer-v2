################################################################################
#
# python-spotipy
#
################################################################################

PYTHON_SPOTIPY_VERSION = 2.3.8
PYTHON_SPOTIPY_SOURCE = spotipy-$(PYTHON_SPOTIPY_VERSION).tar.gz
PYTHON_SPOTIPY_SITE = https://pypi.python.org/packages/c1/12/13af2e8e39c904eb66a9410534ae940862b473634d8d3c8f6cba7bf15ab8
PYTHON_SPOTIPY_SETUP_TYPE = setuptools
PYTHON_SPOTIPY_LICENSE = LICENSE.txt
PYTHON_SPOTIPY_LICENSE_FILES = LICENSE.txt
PYTHON_SPOTIPY_DEPENDENCIES = python-requests

$(eval $(python-package))
