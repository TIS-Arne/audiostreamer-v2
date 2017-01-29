################################################################################
#
# python-mopidy-material-webclient
#
################################################################################

PYTHON_MOPIDY_MATERIAL_WEBCLIENT_VERSION = 0.2.1
PYTHON_MOPIDY_MATERIAL_WEBCLIENT_SOURCE = Mopidy-Material-Webclient-$(PYTHON_MOPIDY_MATERIAL_WEBCLIENT_VERSION).tar.gz
PYTHON_MOPIDY_MATERIAL_WEBCLIENT_SITE = https://pypi.python.org/packages/d4/e3/e4ae099c20542cc7244e78b6cb0731dacc6e21e71027e67e486b96399921
PYTHON_MOPIDY_MATERIAL_WEBCLIENT_SETUP_TYPE = setuptools
PYTHON_MOPIDY_MATERIAL_WEBCLIENT_LICENSE = Apache-2.0
PYTHON_MOPIDY_MATERIAL_WEBCLIENT_LICENSE_FILES = LICENSE

$(eval $(python-package))
