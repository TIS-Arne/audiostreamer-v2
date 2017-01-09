################################################################################
#
# python-mopidy-local-images
#
################################################################################

PYTHON_MOPIDY_LOCAL_IMAGES_VERSION = 1.0.0
PYTHON_MOPIDY_LOCAL_IMAGES_SOURCE = Mopidy-Local-Images-$(PYTHON_MOPIDY_LOCAL_IMAGES_VERSION).tar.gz
PYTHON_MOPIDY_LOCAL_IMAGES_SITE = https://pypi.python.org/packages/ac/a0/2b289611d80753f4d536fd3a57b06ee2d2f388f2c34fbca3d23fadd07f7a
PYTHON_MOPIDY_LOCAL_IMAGES_SETUP_TYPE = setuptools
PYTHON_MOPIDY_LOCAL_IMAGES_LICENSE = Apache-2.0
PYTHON_MOPIDY_LOCAL_IMAGES_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_LOCAL_IMAGES_DEPENDENCIES = python-setuptools python-mopidy python-pykka python-uritools

$(eval $(python-package))
