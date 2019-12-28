#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from meizu sdm845-common
-include device/meizu/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/meizu/m1892

# Assertion
TARGET_OTA_ASSERT_DEVICE := m1892,16thPlus

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# HAX: Remove ASAP
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Releasetools
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/meizu/m1892/BoardConfigVendor.mk
