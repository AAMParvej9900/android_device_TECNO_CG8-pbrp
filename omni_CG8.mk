#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from tecno-KG8 device
$(call inherit-product, device/tecno/KG8/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KG8
PRODUCT_NAME := omni_KG8
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Tecno Spark 8 Pro
PRODUCT_MANUFACTURER := TECNO
