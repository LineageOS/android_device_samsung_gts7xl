#
# SPDX-FileCopyrightText: 2024-2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gts7xl device
$(call inherit-product, device/samsung/gts7xl/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

PRODUCT_NAME := lineage_gts7xl
PRODUCT_DEVICE := gts7xl
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T976B
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gts7xlxxx-user 11 RP1A.200720.012 T976BXXS7DXH1 release-keys" \
    BuildFingerprint=samsung/gts7xlxxx/gts7xl:11/RP1A.200720.012/T976BXXS7DXH1:user/release-keys \
    DeviceProduct=gts7xlxxx \
    SystemName=gts7xlxxx
