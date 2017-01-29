################################################################################
#
# python-mopidy
#
################################################################################

PYTHON_MOPIDY_VERSION = 2.0.1
PYTHON_MOPIDY_SOURCE = Mopidy-$(PYTHON_MOPIDY_VERSION).tar.gz
PYTHON_MOPIDY_SITE = https://pypi.python.org/packages/4f/5d/07c06dc2cacc15edc658bd8501435f067938ede429423a2acdb9e9beb8da
PYTHON_MOPIDY_SETUP_TYPE = setuptools
PYTHON_MOPIDY_LICENSE = Apache-2.0
PYTHON_MOPIDY_LICENSE_FILES = LICENSE
PYTHON_MOPIDY_DEPENDENCIES = python-pykka python-requests python-setuptools python-tornado python-gobject


define PYTHON_MOPIDY_USERS
    mopidy -1 mopidy -1 * - - - Mopidy daemon
endef

define PYTHON_MOPIDY_INSTALL_INIT_SYSTEMD
    $(INSTALL) -m 0644 -D $(@D)/extra/systemd/mopidy.service $(TARGET_DIR)/usr/lib/systemd/system/mopidy.service
    mkdir -p $(TARGET_DIR)/etc/systemd/system/multi-user.target.wants
    ln -sf /usr/lib/systemd/system/mopidy.service $(TARGET_DIR)/etc/systemd/system/multi-user.target.wants/mopidy.service
endef

define PYTHON_MOPIDY_INSTALL_HOOK
    $(INSTALL) -m 0755 -D $(@D)/extra/mopidyctl/mopidyctl $(TARGET_DIR)/usr/bin/mopidyctl
endef

PYTHON_MOPIDY_POST_INSTALL_TARGET_HOOKS	+= PYTHON_MOPIDY_INSTALL_HOOK

$(eval $(python-package))
