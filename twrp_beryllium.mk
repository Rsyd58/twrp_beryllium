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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from beryllium device
$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
FOX_USE_BASH_SHELL := 1
FOX_USE_TAR_BINARY := 1
FOX_USE_SED_BINARY := 1
FOX_USE_XZ_UTILS := 1
FOX_BUILD_BASH := 1
FOX_BASH_TO_SYSTEM_BIN := 1
OF_USE_LEGACY_BATTERY_SERVICES := 1
OF_PATCH_AVB20 := 1
OF_NO_ADDITIONAL_MIUI_PROPS_CHECK := 1
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1
OF_NO_MIUI_PATCH_WARNING := 1
OF_DISABLE_MIUI_OTA_BY_DEFAULT := 1
TW_DEFAULT_LANGUAGE := en
OF_DISABLE_OTA_MENU := 1
FOX_DELETE_AROMAFM := 1
FOX_DELETE_INITD_ADDON := 1
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_ALLOW_DISABLE_NAVBAR := 0
OF_SKIP_MULTIUSER_FOLDERS_BACKUP := 1
OF_USE_GREEN_LED := 0
OF_FLASHLIGHT_ENABLE := 1
OF_NO_MIUI_OTA_VENDOR_BACKUP := 1
OF_USE_SYSTEM_FINGERPRINT := 1
OF_FORCE_DISABLE_DM_VERITY_MIUI := 1
OF_USE_MAGISKBOOT := 1
OF_SKIP_FBE_DECRYPTION := 1
OF_KEEP_FORCED_ENCRYPTION := 1
OF_NO_RELOAD_AFTER_DECRYPTION := 1
OF_CHECK_OVERWRITE_ATTEMPTS := 1
OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI := 1
OF_DISABLE_MIUI_OTA_BY_DEFAULT := 1
FOX_BUILD_TYPE := Official
OF_MAINTAINER := Rsyd58
FOX_VERSION := R12.1
FOX_VARIANT := SE
OF_SCREEN_H := 2246
OF_STATUS_H := 91
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_CLOCK_POS := 2
OF_HIDE_NOTCH := 1
OF_QUICK_BACKUP_LIST := /boot;/data;/system_image;/vendor_image;
OF_DONT_KEEP_LOG_HISTORY := 1
FOX_BUGGED_AOSP_ARB_WORKAROUND := 1616300800


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := beryllium
PRODUCT_NAME := twrp_beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Poco F1
PRODUCT_MANUFACTURER := Xiaomi

# Bypass anti-rollback ROMs protection
# Set build date to Jan 1 2009 00:00:00
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000
