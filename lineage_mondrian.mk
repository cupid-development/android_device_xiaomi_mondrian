#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common RisingOS configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23013RK75C

PRODUCT_SYSTEM_NAME := mondrian
PRODUCT_SYSTEM_DEVICE := mondrian

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mondrian-user 14 UKQ1.230804.001 V816.0.5.0.UMNMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/mondrian/mondrian:14/UKQ1.230804.001/V816.0.5.0.UMNMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# RisingOS stuff
RISING_CHIPSET="Snapdragon 8+ Gen1" 
RISING_MAINTAINER="Finish211(Finish)"
RISING_PACKAGE_TYPE := GAPPS
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false

# RisingOS GMS build flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
