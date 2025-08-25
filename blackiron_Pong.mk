#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common BlackIron stuff.
$(call inherit-product, vendor/blackiron/config/common_full_phone.mk)

PRODUCT_NAME := balckiron_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-nothing

WITH_GMS := false
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_FIRMWARE = true
BLACKIRON_BUILDTYPE := TEST
BLACKIRON_MAINTAINER := MrDeath

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.240903.001/2507082227:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=Pong \
    SystemDevice=Pong \
    SystemName=Pong
