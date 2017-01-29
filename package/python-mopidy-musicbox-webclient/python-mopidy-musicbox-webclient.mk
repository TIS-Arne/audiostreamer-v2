################################################################################
#
# python-mopidy-musicbox-webclient
#
################################################################################

PYTHON_MOPIDY_MUSICBOX_WEBCLIENT_VERSION = 2.3.0
PYTHON_MOPIDY_MUSICBOX_WEBCLIENT_SOURCE = Mopidy-MusicBox-Webclient-$(PYTHON_MOPIDY_MUSICBOX_WEBCLIENT_VERSION).tar.gz
PYTHON_MOPIDY_MUSICBOX_WEBCLIENT_SITE = https://pypi.python.org/packages/a5/8c/cd6ca5d968dd21f1b5b238d64244ea822753f876b237c84aecf2519b7cda
PYTHON_MOPIDY_MUSICBOX_WEBCLIENT_SETUP_TYPE = setuptools
PYTHON_MOPIDY_MUSICBOX_WEBCLIENT_LICENSE = Apache-2.0
PYTHON_MOPIDY_MUSICBOX_WEBCLIENT_LICENSE_FILES = LICENSE

$(eval $(python-package))
