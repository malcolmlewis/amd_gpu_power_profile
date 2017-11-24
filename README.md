amd_gpu_power_profile
=====================


INTRODUCTION
---------------------
A bash script to set the power profile (mode and performance) for
either the radeon or amdgpu kernel module. Activation of the script
and sysconfig variables can be performed by the included systemd
service.

INSTALLATION
---------------------
Unpack the source;

- tar xvf amd_gpu_power_profile-{version}.tar.gz

Switch to root user and cd to build directory;

- make install

Prebuilt rpms are available on the openSUSE Build Service at;
https://software.opensuse.org/package/amd_gpu_power_profile

USAGE
---------------------
You need to be root user to run;

amd_gpu_power_profile <OPERATION_MODE> <PERFORMANCE_LEVEL>

Where OPERATION_MODE is one of battery, balanced or performance.

Where PERFORMANANCE_MODE is one of auto, low or high.

CONTACTING THE AUTHOR
---------------------
I can be contacted at: malcolmlewis -at- opensuse -dot- org
