#
# Copyright (C) 2024 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from AOSP base products (AOSP minimal manifest)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# AOSP GSI keys
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# TWRP common configuration
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from device makefile
$(call inherit-product, device/doogee/X96/device.mk)

PRODUCT_DEVICE := X96
PRODUCT_NAME := twrp_X96
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := X96
PRODUCT_MANUFACTURER := doogee
