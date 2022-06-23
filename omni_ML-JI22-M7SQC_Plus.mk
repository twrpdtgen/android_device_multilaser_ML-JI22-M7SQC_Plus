#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from ML-JI22-M7SQC_Plus device
$(call inherit-product, device/multilaser/ML-JI22-M7SQC_Plus/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ML-JI22-M7SQC_Plus
PRODUCT_NAME := omni_ML-JI22-M7SQC_Plus
PRODUCT_BRAND := Multilaser
PRODUCT_MODEL := M7SQC_Plus
PRODUCT_MANUFACTURER := multilaser
