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
$(call inherit-product, vendor/pixelapps/common/common-vendor.mk)

ifeq ($(PIXELAPPS_OPTIONAL), true)
    # Optional Pixel Apps
    $(call inherit-product, vendor/pixelapps/optional/optional-vendor.mk)
endif

# Pixel Face Unlock
ifeq ($(PIXELAPPS_FACE_UNLOCK), true)
    $(call inherit-product, vendor/pixelapps/faceunlock/device.mk)
endif

# Overlays
PRODUCT_PACKAGES += \
    PearlOverlay2024 \
    PixelBatteryHealthOverlay \
    PixelConnectivityOverlay2024 \
    PixelWifiOverlay2021 \
    SettingsGoogleOverlayVortex \
    SystemUIGoogleOverlayVortex \
    SystemUIGXOverlay \
    WildlifeSettingsVpnOverlay2022 \
    WildlifeSysuiVpnOverlay2022 \
    PixelSetupWizardOverlay2024 

ifeq ($(PIXELAPPS_UDFPS), true)
    PRODUCT_PACKAGES += \
        UdfpsOverlay
    ifeq ($(PIXELAPPS_ULTRASONIC_UDFPS), true)
        PRODUCT_PACKAGES += \
            UltrasonicOverlay
    endif
endif

endif