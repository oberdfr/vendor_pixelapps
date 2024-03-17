# Copyright (C) 2024 The VortexAOSP Project and its Proprietors.
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

ifeq ($(TARGET_PREBUILT_PIXELAPPS), true)
PRODUCT_SOONG_NAMESPACES += \
    vendor/PixelApps

# PixelApps
$(call inherit-product, vendor/PixelApps/common/common-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    PixelBatteryHealthOverlay \
    PixelConnectivityOverlay2021 \
    PixelWifiOverlay2021 \
    SettingsGoogleOverlayVortex \
    SystemUIGoogleOverlayVortex \
    SystemUIGXOverlay \

endif