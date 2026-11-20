# cpeabs

An abstraction layer for consumer preference equipment systems.
[![GitHub release](https://img.shields.io/github/release/rdkcentral/cpeabs.svg)](https://github.com/rdkcentral/cpeabs/releases)

## Origin

This repository is based on the original
[cpeabs](https://github.com/xmidt-org/cpeabs) source code
maintained under the xmidt-org organization. The code was copied into the
rdkcentral organization, where ongoing maintenance and development now take place.

- Original project: https://github.com/xmidt-org/cpeabs
- Current repository: https://github.com/rdkcentral/cpeabs

## Add more information here.

# Building and Testing Instructions

```
Use CFLAG -DPLATFORM=DEVICE_GATEWAY to build for RDKB platform
Use CFLAG -DPLATFORM=DEVICE_VIDEO to build for RDKV platform
Use CFLAG -DPLATFORM=DEVICE_EXTENDER to build for POD platform

mkdir build
cd build
cmake ..
make
make test
```

