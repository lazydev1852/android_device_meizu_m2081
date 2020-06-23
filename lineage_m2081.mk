#
# Copyright (C) 2020 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m2081 device
$(call inherit-product, device/meizu/m2081/device.mk)

# Inherit common configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := mokee_m2081
PRODUCT_BRAND := meizu
PRODUCT_DEVICE := m2081
PRODUCT_MANUFACTURER := meizu
PRODUCT_MODEL := meizu 17

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="meizu_17_N_CN" \
    PRODUCT_DEVICE="meizu17"

BUILD_FINGERPRINT := meizu/meizu_17_N_CN/meizu17:10/QKQ1.200223.002/1585640978:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=390
