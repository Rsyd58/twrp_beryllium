#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := beryllium

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)
TARGET_ARCH := arm64
OF_MAINTAINER := Rsyd58
OF_HIDE_NOTCH := 1
OF_DONT_KEEP_LOG_HISTORY := 1
OF_ADVANCED_SECURITY := 1
OF_SPLASH_MAX_SIZE := 4096
FOX_USE_NANO_EDITOR := 1
FOX_VARIANT := SE
OF_FORCE_PREBUILT_KERNEL := 1
OF_PATCH_AVB20 := 1
OF_USE_GREEN_LED := 0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=sdm845

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := twrp_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR_PRODUCT_NAME := beryllium
TARGET_VENDOR_DEVICE_NAME := beryllium

