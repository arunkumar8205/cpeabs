# cpeabs

An abstraction layer for consumer preference equipment systems.
[![GitHub release](https://img.shields.io/github/release/rdkcentral/cpeabs.svg)](https://github.com/rdkcentral/cpeabs/releases)
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

