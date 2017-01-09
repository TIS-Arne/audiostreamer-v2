################################################################################
#
# python-mopidy-tunein
#
################################################################################

PYTHON_MOPIDY_TUNEIN_VERSION = 0.4.1
PYTHON_MOPIDY_TUNEIN_SOURCE = Mopidy-TuneIn-$(PYTHON_MOPIDY_TUNEIN_VERSION).tar.gz
PYTHON_MOPIDY_TUNEIN_SITE = https://pypi.python.org/packages/be/b5/e3f56c7d57fdc0c4d3bde6153c11be2e36fd0b2dccbe9631ffd6fc5055dd
PYTHON_MOPIDY_TUNEIN_SETUP_TYPE = setuptools
PYTHON_MOPIDY_TUNEIN_LICENSE = Apache-2.0
PYTHON_MOPIDY_TUNEIN_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_TUNEIN_DEPENDENCIES = python-setuptools python-mopidy python-pykka python-requests

$(eval $(python-package))
