################################################################################
#
# python-pykka
#
################################################################################

PYTHON_PYKKA_VERSION = 1.2.1
PYTHON_PYKKA_SOURCE = Pykka-$(PYTHON_PYKKA_VERSION).tar.gz
PYTHON_PYKKA_SITE = https://pypi.python.org/packages/70/f7/bb8fc78fc52a50f66dda4260f8726c62267f568066c71e2264b883b70755
PYTHON_PYKKA_SETUP_TYPE = setuptools
PYTHON_PYKKA_LICENSE = Apache-2.0
PYTHON_PYKKA_LICENSE_FILES = LICENSE

$(eval $(python-package))
