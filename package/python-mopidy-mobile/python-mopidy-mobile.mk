################################################################################
#
# python-mopidy-mobile
#
################################################################################

PYTHON_MOPIDY_MOBILE_VERSION = 1.7.5
PYTHON_MOPIDY_MOBILE_SOURCE = Mopidy-Mobile-$(PYTHON_MOPIDY_MOBILE_VERSION).tar.gz
PYTHON_MOPIDY_MOBILE_SITE = https://pypi.python.org/packages/5d/91/dc9f065d2e24314533468d6df75daa6bab44e461613f0d4d7f106476fe81
PYTHON_MOPIDY_MOBILE_SETUP_TYPE = setuptools
PYTHON_MOPIDY_MOBILE_LICENSE = Apache-2.0
PYTHON_MOPIDY_MOBILE_LICENSE_FILES = LICENSE

$(eval $(python-package))
