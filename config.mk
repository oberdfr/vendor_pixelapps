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
