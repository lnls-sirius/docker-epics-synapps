#!../../bin/linux-x86_64/procCtrl
< envPaths

epicsEnvSet("EPICS_IOC_LOG_INET", "$(EPICS_IOC_LOG_INET)")
epicsEnvSet("EPICS_IOC_LOG_PORT", "$(EPICS_IOC_LOG_PORT)")
epicsEnvSet("EPICS_IOC_CAPUTLOG_INET", "$(EPICS_IOC_CAPUTLOG_INET)")
epicsEnvSet("EPICS_IOC_CAPUTLOG_PORT", "$(EPICS_IOC_CAPUTLOG_PORT)")

cd "$(TOP)"
dbLoadDatabase "dbd/procCtrl.dbd"
procCtrl_registerRecordDeviceDriver pdbbase
asSetFilename("$(TOP)/db/Security.as")

drvAsynIPPortConfigure("P1",  "unix://$(SOCKET)")
seq(procServControl,"P={ioc["pv"]}")
dbLoadRecords("db/procServControl.db","P=,PORT=P1,SHOWOUT=1,MANUALSTART=,NAME=")

cd "$(TOP)/iocBoot/iocStreamDeviceIOC"
iocInit
iocLogInit
caPutLogInit "$(EPICS_IOC_CAPUTLOG_INET):$(EPICS_IOC_CAPUTLOG_PORT)" 2


