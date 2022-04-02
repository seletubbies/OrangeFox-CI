#!/bin/bash

# Device
export FOX_BRANCH="fox_9.0"
export DT_LINK="https://github.com/awab228/android_device_samsung_on5xelte.git -b fox_9.0"

export DEVICE="on5xelte"
export OEM="samsung"
export TARGET="recoveryimage"

export OUTPUT="OrangeFox*.zip"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
export KERNEL_SOURCE="https://github.com/AlexGeek3/SkyKernel-J5p.git"
#export PLATFORM="sm6150" # Leave it commented if you want to clone the kernel to kernel/$OEM/$DEVICE

# Extra Command
export EXTRA_CMD="git clone https://github.com/OrangeFoxRecovery/Avatar.git misc"

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
