#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

PRODUCT_DEVICE := munch
PRODUCT_NAME := omni_munch
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22021211RC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="munch-user 12 RKQ1.200826.002 V13.0.7.0.SLMCNXM release-keys"

BUILD_FINGERPRINT := Redmi/munch/munch:12/RKQ1.200826.002/V13.0.7.0.SLMCNXM:user/release-keys
