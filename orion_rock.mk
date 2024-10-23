#
# Copyright (C) 2023 LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/rock/device.mk)

# Inherit some common Rising stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Res
TARGET_BOOT_ANIMATION_RES := 1080

# OrionOS Stuffs
ORION_MAINTAINER := Shakib
ORION_MAINTAINER_LINK := https://t.me/Shakib_BD
ORION_BUILD_TYPE := OFFICIAL
ORION_GAPPS := true
TARGET_ENABLE_BLUR := false
TARGET_HAS_UDFPS := false
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Eppe
TARGET_DISABLE_EPPE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rock
PRODUCT_NAME := orion_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22071219AI
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT :=Redmi/rock/rock:12/UP1A.231005.007/V816.0.7.0.ULUINXM:user/release-keys
PRIVATE_BUILD_DESC="rock-user 14 UP1A.231005.007 V816.0.7.0.ULUINXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
