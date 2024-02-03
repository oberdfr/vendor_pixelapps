# system_ext/app
PRODUCT_PACKAGES += \
    SystemUIGoogle \
    #SettingsGoogle#

PRODUCT_COPY_FILES += \
	vendor/google/pixelapps/system_ext/SystemUIGoogle/oat/arm64/SystemUIGoogle.odex:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SystemUIGoogle/oat/arm64/SystemUIGoogle.odex \
	vendor/google/pixelapps/system_ext/SystemUIGoogle/oat/arm64/SystemUIGoogle.vdex:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SystemUIGoogle/oat/arm64/SystemUIGoogle.vdex