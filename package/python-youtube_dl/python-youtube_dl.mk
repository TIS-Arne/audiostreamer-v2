################################################################################
#
# python-youtube_dl
#
################################################################################

PYTHON_YOUTUBE_DL_VERSION = 2017.1.22
PYTHON_YOUTUBE_DL_SOURCE = youtube_dl-$(PYTHON_YOUTUBE_DL_VERSION).tar.gz
PYTHON_YOUTUBE_DL_SITE = https://pypi.python.org/packages/8c/1e/6dc2145e84a32e97b628d0036c08a392fdb8ed1aa59cd0f8d0bf76f753c6
PYTHON_YOUTUBE_DL_SETUP_TYPE = setuptools
PYTHON_YOUTUBE_DL_LICENSE = Public Domain

$(eval $(python-package))
