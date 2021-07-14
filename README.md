Docker image with EPICS and SynApps installed

## Build
**docker-compose** must be used to build the images in order to are set the labels accordingly.

The variables defined at [`.env`](.env) are used during the build process and should be updated using the [`scripts/config.sh`](scripts/config.sh).

```bash
./scripts/config.sh
docker-compose build <service_name>
```

synApps 1.2.1
-------------
**EPICS_BASE /opt/epics/base**
**EPICS_SUPPORT /opt/epics/synApps/support**
**EPICS_MODULES /opt/epics/modules**
```
alive-R1-1-0
areaDetector-R3-6
assemble_synApps.sh
asyn-R4-35
autosave-R5-9
busy-R1-7-1
caPutLog-R3.7
calc-R3-7-2
caputRecorder-R1-7-1
configure
delaygen-R1-2-0
documentation
iocStats-3-1-15
ip-R2-20
ipUnidig-R2-11
ipac-2-15
mca-R7-7
motor-R7-0
optics-R2-13-2
procServControl-1-2
quadEM-R9-2
seq-2-2-6
sscan-R2-11-2
std-R3-5-1
stream-R2-8-8
utils
```
