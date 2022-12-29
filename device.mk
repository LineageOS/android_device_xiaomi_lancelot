#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6768-common
$(call inherit-product, device/xiaomi/mt6768-common/mt6768.mk)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayLancelot \
    SystemUIOverlayLancelot

# Rootdir
PRODUCT_PACKAGES += \
    init.project.rc

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

# Firmware
RECOVERY_TS_FW_PATH := vendor/xiaomi/lancelot/proprietary/vendor/firmware

PRODUCT_COPY_FILES += \
    $(RECOVERY_TS_FW_PATH)/focaltech_mp_fw_huaxing.ini:recovery/root/vendor/firmware/focaltech_mp_fw_huaxing.ini \
    $(RECOVERY_TS_FW_PATH)/focaltech_ts_fw_huaxing.bin:recovery/root/vendor/firmware/focaltech_ts_fw_huaxing.bin \
    $(RECOVERY_TS_FW_PATH)/nvt_dj_72d_fw.bin:recovery/root/vendor/firmware/nvt_dj_72d_fw.bin \
    $(RECOVERY_TS_FW_PATH)/nvt_dj_72d_mp.bin:recovery/root/vendor/firmware/nvt_dj_72d_mp.bin \
    $(RECOVERY_TS_FW_PATH)/nvt_dj_fw.bin:recovery/root/vendor/firmware/nvt_dj_fw.bin \
    $(RECOVERY_TS_FW_PATH)/nvt_dj_mp.bin:recovery/root/vendor/firmware/nvt_dj_mp.bin \
    $(RECOVERY_TS_FW_PATH)/nvt_tm_fw.bin:recovery/root/vendor/firmware/nvt_tm_fw.bin \
    $(RECOVERY_TS_FW_PATH)/nvt_tm_mp.bin:recovery/root/vendor/firmware/nvt_tm_mp.bin

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_galahad/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_galahad/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_galahad/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_galahad/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_galahad/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_galahad/com.android.nfc_extras.xml

# SKU-specific properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sku_props/build_ss_vendor.prop:$(TARGET_COPY_OUT_VENDOR)/build_ss_vendor.prop \
    $(LOCAL_PATH)/configs/sku_props/build_dsds_vendor.prop:$(TARGET_COPY_OUT_VENDOR)/build_dsds_vendor.prop

# Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0.vendor \
    android.hardware.secure_element@1.1.vendor \
    android.hardware.secure_element@1.2.vendor

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 29

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/lancelot/lancelot-vendor.mk)
