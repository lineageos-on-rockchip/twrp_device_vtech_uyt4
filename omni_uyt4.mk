#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from uyt4 device
$(call inherit-product, device/vtech/uyt4/device.mk)

PRODUCT_DEVICE := uyt4
PRODUCT_NAME := omni_uyt4
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := uyt4
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="UYT4-user 10 QD4A.200805.003 eng.epicbu.20231228.113918 release-keys"

BUILD_FINGERPRINT := rockchip/UYT4/UYT4:10/QD4A.200805.003/epicbuilder212281139:user/release-keys
