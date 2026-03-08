#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from et669_64_bsp device
$(call inherit-product, device/alps/et669_64_bsp/device.mk)

PRODUCT_DEVICE := et669_64_bsp
PRODUCT_NAME := omni_et669_64_bsp
PRODUCT_BRAND := YD
PRODUCT_MODEL := YDD011
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_et669_64_bsp-user 8.1.0 O11019 1677205379 test-keys"

BUILD_FINGERPRINT := alps/full_et669_64_bsp/et669_64_bsp:8.1.0/O11019/1677205379:user/test-keys
