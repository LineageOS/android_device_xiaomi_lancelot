#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6768-common
include device/xiaomi/mt6768-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/lancelot

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := lancelot_defconfig

# Inherit from the proprietary version
include vendor/xiaomi/lancelot/BoardConfigVendor.mk
