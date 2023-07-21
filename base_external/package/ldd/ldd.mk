
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 0676c10
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-jda.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull
LDD_MODULE_SUBDIRS += misc-modules

LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

BR2_ROOTFS_OVERLAY += ../base_external/rootfs_overlay

$(eval $(kernel-module))
$(eval $(generic-package))
