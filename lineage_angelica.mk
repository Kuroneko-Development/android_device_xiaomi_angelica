#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# GAPPS stuff
#TARGET_BOOT_ANIMATION_RES := 720
#TARGET_USES_BLUR := true
#NAD_BUILD_TYPE := OFFICIAL
#USE_AOSP_CLOCK := true
#TARGET_SUPPORTS_QUICK_TAP := true
#USE_PIXEL_CHARGING := true
#TARGET_SUPPORTS_GOOGLE_RECORDER := true
#IS_PHONE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from angelica device makefile
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_angelica
PRODUCT_DEVICE := angelica
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := xiaomi

# Build info
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := angelica
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220605.009.B1 8650216 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220605.009.B1/8650216:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
