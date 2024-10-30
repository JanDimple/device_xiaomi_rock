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

# Eppe
TARGET_DISABLE_EPPE := true

# RisingOS Stuffs
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_ENABLE_PIXEL_FEATURES := false
TARGET_ENABLE_BLUR := false
RISING_MAINTAINER := Shakib (@Shakib_BD)
RISING_CHIPSET := Mediatek Helio G99
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="Shakib (@Shakib_BD)"
WITH_GMS := false
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rock
PRODUCT_NAME := lineage_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22071219AI
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT :=Redmi/rock/rock:12/UP1A.231005.007/V816.0.7.0.ULUINXM:user/release-keys
PRIVATE_BUILD_DESC="rock-user 14 UP1A.231005.007 V816.0.7.0.ULUINXM release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
