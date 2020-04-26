# Copyright (C) 2020 Paranoid Android
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

# Check for target product
ifeq (pa_RMX1921,$(TARGET_PRODUCT))

# Include Paranoid Android common configuration
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit device configuration
$(call inherit-product, device/realme/RMX1921/device.mk)

# Inherit common PA configuration
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1921
PRODUCT_NAME := pa_RMX1921
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme XT
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm710-user 9 PKQ1.190101.001 eng.root.20190718.013112 release-keys"

BUILD_FINGERPRINT := "Realme/RMX1921/RMX1921:9/PKQ1.190101.001/1561987145:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1921" \
    TARGET_DEVICE="RMX1921"

endif
