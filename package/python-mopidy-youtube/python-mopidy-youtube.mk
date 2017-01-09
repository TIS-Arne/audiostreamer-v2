################################################################################
#
# python-mopidy-youtube
#
################################################################################

PYTHON_MOPIDY_YOUTUBE_VERSION = 2.0.2
PYTHON_MOPIDY_YOUTUBE_SOURCE = Mopidy-Youtube-$(PYTHON_MOPIDY_YOUTUBE_VERSION).tar.gz
PYTHON_MOPIDY_YOUTUBE_SITE = https://pypi.python.org/packages/01/a0/89424a534460b8f9c50a85ad8f10427f12f3afb34fd44f29aabcf9b05d15
PYTHON_MOPIDY_YOUTUBE_SETUP_TYPE = setuptools
PYTHON_MOPIDY_YOUTUBE_LICENSE = Apache-2.0
PYTHON_MOPIDY_YOUTUBE_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_YOUTUBE_DEPENDENCIES = python-setuptools python-requests python-pafy python-mopidy python-pykka

$(eval $(python-package))
