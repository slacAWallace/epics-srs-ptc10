TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build an ioc application
# Use PROD_IOC_RTEMS for RTEMS only
# Use PROD_IOC_Linux for Linux only
PROD_IOC = ptc10

# ptc10.dbd will be created and installed
DBD += ptc10.dbd

# ptc10.dbd will be made up from these files:
ptc10_DBD += base.dbd
ptc10_DBD += iocAdmin.dbd
ptc10_DBD += autosaveSupport.dbd
ptc10_DBD += asyn.dbd
ptc10_DBD += asynRecord.dbd
ptc10_DBD += drvAsynSerialPort.dbd
ptc10_DBD += drvAsynIPPort.dbd
ptc10_DBD += stream.dbd

# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
ptc10_SRCS += ptc10_registerRecordDeviceDriver.cpp
ptc10_SRCS_DEFAULT += ptc10Main.cpp

# Add locally compiled object code
#ptc10_SRCS += dbSubExample.c

ptc10_LIBS += devIocStats
ptc10_LIBS += autosave
ptc10_LIBS += asyn
ptc10_LIBS += stream
ptc10_LIBS += $(EPICS_BASE_IOC_LIBS)

ifneq '$(T_A)' 'RTEMS-beatnik'
PROD_SYS_LIBS_DEFAULT += pcre
SHRLIB_DEPLIB_DIRS += $(PCRE_LIB)
endif

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

