#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/mondrian/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/mondrian

# Kernel
device_second_stage_modules := \
    goodix_fod.ko \
    goodix_core.ko \
    wl2866d.ko \
    qcom-hv-haptics.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(device_second_stage_modules)
BOARD_VENDOR_KERNEL_MODULES_LOAD += $(device_second_stage_modules)

BOOT_KERNEL_MODULES += $(device_second_stage_modules)

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Screen density
TARGET_SCREEN_DENSITY := 560

# Vibrator
TARGET_QTI_VIBRATOR_EFFECT_LIB := libqtivibratoreffect.xiaomi
TARGET_QTI_VIBRATOR_USE_EFFECT_STREAM := true
