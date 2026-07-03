#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/star2qltechn

PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_SHIPPING_API_LEVEL := 26

AB_OTA_UPDATER := false
PRODUCT_USE_DYNAMIC_PARTITIONS := false

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd \
    charger_res_images

# First bring-up keeps dependencies minimal. Add decryption-specific blobs only
# after recovery boots and /data behavior is observed.
TARGET_RECOVERY_DEVICE_MODULES += \
    libion

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# Display
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2960
