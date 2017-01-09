################################################################################
#
# python-mopidy-cd
#
################################################################################

PYTHON_MOPIDY_CD_VERSION = cdf07990d20ef2bfda3153e93df54c824db37268
PYTHON_MOPIDY_CD_SITE = $(call github,unicap,mopidy-cd,$(PYTHON_MOPIDY_CD_VERSION))
PYTHON_MOPIDY_CD_SETUP_TYPE = setuptools
PYTHON_MOPIDY_CD_LICENSE = Apache-2.0
PYTHON_MOPIDY_CD_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_CD_DEPENDENCIES = python-setuptools python-mopidy python-pykka python-discid

$(eval $(python-package))
