################################################################################
#
# gobject-introspection
#
################################################################################

GOBJECT_INTROSPECTION_VERSION         = 1.51.1
GOBJECT_INTROSPECTION_SITE            = $(call github,GNOME,gobject-introspection,$(GOBJECT_INTROSPECTION_VERSION))
GOBJECT_INTROSPECTION_LICENSE         = GPLv2+ LGPLv2.1
GOBJECT_INTROSPECTION_LICENSE_FILES   = COPYING COPYING.GPL COPYING.LGPL COPYING.lib COPYING.tools
GOBJECT_INTROSPECTION_INSTALL_STAGING = YES
GOBJECT_INTROSPECTION_MAKE_OPTS       = GI_CROSS_LAUNCHER="$(HOST_DIR)/usr/bin/qemu-$(HOST_QEMU_ARCH)" GI_LDD=$(STAGING_DIR)/usr/bin/ldd-cross INTROSPECTION_SCANNER=g-ir-scanner INTROSPECTION_COMPILER=g-ir-compiler SCANNER_LIBS=-L$(@D)/.libs
#GI_SCANNER_DEBUG=save-temps 
GOBJECT_INTROSPECTION_DEPENDENCIES    = pkgconf python libglib2 host-qemu host-gobject-introspection
HOST_GOBJECT_INTROSPECTION_DEPENDENCIES = host-pkgconf host-python host-libglib2 toolchain

ifeq ($(BR2_PACKAGE_PYTHON),y)
GOBJECT_INTROSPECTION_DEPENDENCIES += python host-python

GOBJECT_INTROSPECTION_CONF_ENV = \
	PYTHON=$(HOST_DIR)/usr/bin/python2 \
	PYTHON_INCLUDES="`$(STAGING_DIR)/usr/bin/python2-config --includes`"
else
GOBJECT_INTROSPECTION_DEPENDENCIES += python3 host-python3

GOBJECT_INTROSPECTION_CONF_ENV = \
	PYTHON=$(HOST_DIR)/usr/bin/python3 \
	PYTHON_INCLUDES="`$(STAGING_DIR)/usr/bin/python3-config --includes`"
endif

define GOBJECT_INTROSPECTION_BOOTSTRAP
	cd $(GOBJECT_INTROSPECTION_DIR) && env NOCONFIGURE=1 ./autogen.sh --host=$(GNU_TARGET_NAME)
endef
GOBJECT_INTROSPECTION_PRE_CONFIGURE_HOOKS += GOBJECT_INTROSPECTION_BOOTSTRAP

define HOST_GOBJECT_INTROSPECTION_BOOTSTRAP
	cd $(HOST_GOBJECT_INTROSPECTION_DIR) && env NOCONFIGURE=1 ./autogen.sh
endef
HOST_GOBJECT_INTROSPECTION_PRE_CONFIGURE_HOOKS += HOST_GOBJECT_INTROSPECTION_BOOTSTRAP

# We must hack staging twice: once after installing the host version in order to
# provide the cross-versions that can be used to build the target version
# and again after the target version has overwritten the staging files as it
# installs to staging.
HOST_GOBJECT_INTROSPECTION_POST_INSTALL_HOOKS += GOBJECT_INTROSPECTION_HACK_STAGING
GOBJECT_INTROSPECTION_POST_INSTALL_STAGING_HOOKS += GOBJECT_INTROSPECTION_HACK_STAGING_PKGCONFIG GOBJECT_INTROSPECTION_HACK_STAGING
# TODO: Use a better name than ldd-cross? Move it to a separate package?
define GOBJECT_INTROSPECTION_HACK_STAGING_PKGCONFIG
	echo "HACKING STAGING PACKAGE CONFIG"
	sed --in-place -e "s:^prefix=.*:prefix=$(STAGING_DIR)/usr:" $(STAGING_DIR)/usr/lib/pkgconfig/gobject-introspection-1.0.pc
	sed --in-place -e "s:^exec_prefix=.*:exec_prefix=$(STAGING_DIR)/usr:" $(STAGING_DIR)/usr/lib/pkgconfig/gobject-introspection-1.0.pc
endef

define GOBJECT_INTROSPECTION_HACK_STAGING
	echo "CREATING STAGING g-ir-scanner"
	echo "#!/bin/sh" > $(STAGING_DIR)/usr/bin/g-ir-scanner
	echo "env SCANNER_LIBS=$(SCANNER_LIBS) GI_CROSS_LAUNCHER=\"$(HOST_DIR)/usr/bin/qemu-$(HOST_QEMU_ARCH)\" GI_LDD=ldd-cross $(HOST_DIR)/usr/bin/g-ir-scanner \""'$$'@"\"" >> $(STAGING_DIR)/usr/bin/g-ir-scanner
	chmod guo+x $(STAGING_DIR)/usr/bin/g-ir-scanner

	echo "CREATING STAGING g-ir-compiler"
	echo "#!/bin/sh" > $(STAGING_DIR)/usr/bin/g-ir-compiler
	echo "$(HOST_DIR)/usr/bin/qemu-$(HOST_QEMU_ARCH) $(STAGING_DIR)/usr/bin/g-ir-compiler.real \""'$$'"@\"" >> $(STAGING_DIR)/usr/bin/g-ir-compiler
	chmod guo+x $(STAGING_DIR)/usr/bin/g-ir-compiler

	echo "CREATING STAGING ldd-cross"
	chmod guo+x $(GOBJECT_INTROSPECTION_PKGDIR)/create-ldd-cross.sh
	$(GOBJECT_INTROSPECTION_PKGDIR)/create-ldd-cross.sh $(HOST_DIR)/usr/bin/qemu-$(HOST_QEMU_ARCH) $(STAGING_DIR)
	echo "Created:"
	cat $(STAGING_DIR)/usr/bin/ldd-cross
	chmod guo+x $(STAGING_DIR)/usr/bin/ldd-cross
endef

define GOBJECT_INTROSPECTION_INSTALL_STAGING_CMDS
	cp -dp $(@D)/.libs/libgirepository-1.0.so $(@D)/.libs/libgirepository-1.0.so.1 $(@D)/.libs/libgirepository-1.0.so.1.0.0 $(STAGING_DIR)/usr/lib/
	mkdir -p $(STAGING_DIR)/usr/share/gir-1.0
	cp -dp $(@D)/*.gir $(STAGING_DIR)/usr/share/gir-1.0/
	cp -dp $(@D)/gir/*.gir $(STAGING_DIR)/usr/share/gir-1.0/
	mkdir -p $(STAGING_DIR)/usr/lib/girepository-1.0/
	cp -dp $(@D)/*.typelib $(STAGING_DIR)/usr/lib/girepository-1.0/
	cp -dp $(@D)/gir/*.typelib $(STAGING_DIR)/usr/lib/girepository-1.0/
	cp $(@D)/*.pc $(STAGING_DIR)/usr/lib/pkgconfig/
	mkdir -p $(STAGING_DIR)/usr/include/gobject-introspection-1.0
	cp -dp $(@D)/girepository/*.h $(STAGING_DIR)/usr/include/gobject-introspection-1.0/
	mkdir -p $(STAGING_DIR)/usr/share/gobject-introspection-1.0
	cp -dp $(@D)/Makefile.introspection $(STAGING_DIR)/usr/share/gobject-introspection-1.0/
	cp -dp $(@D)/.libs/g-ir-compiler $(STAGING_DIR)/usr/bin/g-ir-compiler.real
endef

define GOBJECT_INTROSPECTION_INSTALL_TARGET_CMDS
	cp -dp $(@D)/.libs/libgirepository-1.0.so $(@D)/.libs/libgirepository-1.0.so.1 $(@D)/.libs/libgirepository-1.0.so.1.0.0 $(TARGET_DIR)/usr/lib/
	mkdir -p $(TARGET_DIR)/usr/share/gir-1.0
	cp -dp $(@D)/*.gir $(TARGET_DIR)/usr/share/gir-1.0/
	cp -dp $(@D)/gir/*.gir $(TARGET_DIR)/usr/share/gir-1.0/
	mkdir -p $(TARGET_DIR)/usr/lib/girepository-1.0/
	cp -dp $(@D)/*.typelib $(TARGET_DIR)/usr/lib/girepository-1.0/
	cp -dp $(@D)/gir/*.typelib $(TARGET_DIR)/usr/lib/girepository-1.0/
endef

$(eval $(host-autotools-package))
$(eval $(autotools-package))
