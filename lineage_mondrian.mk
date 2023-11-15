#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common lineage configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23013PC75G

PRODUCT_SYSTEM_NAME := mondrian_global
PRODUCT_SYSTEM_DEVICE := mondrian

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mondrian_global-user 13 TKQ1.220905.001 V14.0.5.0.TMNMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/mondrian_global/mondrian:13/TKQ1.220905.001/V14.0.5.0.TMNMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
