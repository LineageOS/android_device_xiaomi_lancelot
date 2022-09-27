#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lancelot

# Inherit from mt6768-common
-include device/xiaomi/mt6768-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := lancelot,galahad,shiva

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
ODM_MANIFEST_SKUS += \
    galahad

ODM_MANIFEST_GALAHAD_FILES := $(DEVICE_PATH)/manifest_galahad.xml

# Kernel
TARGET_KERNEL_CONFIG := lancelot_defconfig

# Inherit the proprietary files
include vendor/xiaomi/lancelot/BoardConfigVendor.mk
