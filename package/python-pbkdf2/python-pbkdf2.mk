################################################################################
#
# python-pbkdf2
#
################################################################################

PYTHON_PBKDF2_VERSION = 1.3
PYTHON_PBKDF2_SOURCE = pbkdf2-$(PYTHON_PBKDF2_VERSION).tar.gz
PYTHON_PBKDF2_SITE = https://pypi.python.org/packages/02/c0/6a2376ae81beb82eda645a091684c0b0becb86b972def7849ea9066e3d5e
PYTHON_PBKDF2_SETUP_TYPE = setuptools
PYTHON_PBKDF2_LICENSE = MIT

$(eval $(python-package))
