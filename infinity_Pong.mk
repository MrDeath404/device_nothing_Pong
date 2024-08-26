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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

# Maintainer Name
INFINITY_MAINTAINER := GHOST

# OFFICIAL Maintainer
INFINITY_BUILD_TYPE := OFFICIAL

# Gapps:
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
TARGET_SHIPS_FULL_GAPPS := true

# UDFPS
TARGET_HAS_UDFPS := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Whether the package supports BLURS
TARGET_SUPPORTS_BLUR := true

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Pong-user 12 SKQ1.240903.001 2501131723 release-keys" \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.240903.001/2501131723:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=A065 \
    SystemDevice=Pong \
    SystemName=Pong
