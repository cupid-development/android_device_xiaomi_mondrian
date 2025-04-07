#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23013PC75G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mondrian_global-user 15 AQ3A.240912.001 OS2.0.5.0.VMNMIXM release-keys" \
    BuildFingerprint=POCO/mondrian_global/mondrian:15/AQ3A.240912.001/OS2.0.5.0.VMNMIXM:user/release-keys \
    DeviceProduct=mondrian \
    SystemName=mondrian_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
