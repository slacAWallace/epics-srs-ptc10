# IOC instance Makefile
# Generates envPaths and expands the instance
# specific substitution files.

TOP = ../..
include $(TOP)/configure/CONFIG
ARCH = linux-x86_64
TARGETS = envPaths

# Make sure these archive files are fully expanded
USR_ARCHIVEFLAGS += -V

#----------------------------------------------------
# Create and install IOC archive file
#
#ARCHIVE += ioc-ptc10-tst.archive

#----------------------------------------------------
# Create and install IOC autosave file
#
#REQ += ioc-ptc10-tst.req

include $(TOP)/configure/RULES
include $(TOP)/configure/RULES.ioc-targets
