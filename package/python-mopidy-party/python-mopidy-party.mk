################################################################################
#
# python-mopidy-party
#
################################################################################

PYTHON_MOPIDY_PARTY_VERSION = 0.2.0
PYTHON_MOPIDY_PARTY_SOURCE = Mopidy-Party-$(PYTHON_MOPIDY_PARTY_VERSION).tar.gz
PYTHON_MOPIDY_PARTY_SITE = https://pypi.python.org/packages/94/e9/ef3be00412ebb143fba91db56f148ba9a8c69b46001a2a6592508d55fea5
PYTHON_MOPIDY_PARTY_SETUP_TYPE = setuptools
PYTHON_MOPIDY_PARTY_LICENSE = Apache-2.0
PYTHON_MOPIDY_PARTY_LICENSE_FILES = LICENSE

$(eval $(python-package))
