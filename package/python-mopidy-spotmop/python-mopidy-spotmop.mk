################################################################################
#
# python-mopidy-spotmop
#
################################################################################

PYTHON_MOPIDY_SPOTMOP_VERSION = 2.10.1
PYTHON_MOPIDY_SPOTMOP_SOURCE = Mopidy-Spotmop-$(PYTHON_MOPIDY_SPOTMOP_VERSION).tar.gz
PYTHON_MOPIDY_SPOTMOP_SITE = https://pypi.python.org/packages/09/a7/f1db5681e2028be069daf9d508c33456f230aacb29495cbbbb48f90e78a8
PYTHON_MOPIDY_SPOTMOP_SETUP_TYPE = setuptools
PYTHON_MOPIDY_SPOTMOP_LICENSE = Apache-2.0
PYTHON_MOPIDY_SPOTMOP_DEPENDENCIES = python-setuptools python-pylast python-spotipy python-mopidy python-mopidy-local-images python-configobj

$(eval $(python-package))
