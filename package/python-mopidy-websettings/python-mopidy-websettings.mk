################################################################################
#
# python-mopidy-websettings
#
################################################################################

PYTHON_MOPIDY_WEBSETTINGS_VERSION = 0.1.4.2
PYTHON_MOPIDY_WEBSETTINGS_SOURCE = Mopidy-WebSettings-$(PYTHON_MOPIDY_WEBSETTINGS_VERSION).tar.gz
PYTHON_MOPIDY_WEBSETTINGS_SITE = https://pypi.python.org/packages/10/3d/e3846230a79cf9cc6b2d0844b9281d38fa988cd6f449787723ea33597128
PYTHON_MOPIDY_WEBSETTINGS_SETUP_TYPE = setuptools
PYTHON_MOPIDY_WEBSETTINGS_LICENSE = Apache-2.0
PYTHON_MOPIDY_WEBSETTINGS_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_WEBSETTINGS_DEPENDENCIES = python-setuptools python-mopidy python-pykka python-configobj python-jinja2

$(eval $(python-package))
