PRODUCT_COPY_FILES += \
	vendor/google/pixelapps/system_ext/SystemUIGoogle/oat/arm64/SystemUIGoogle.odex:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SystemUIGoogle/oat/arm64/SystemUIGoogle.odex \
	vendor/google/pixelapps/system_ext/SystemUIGoogle/oat/arm64/SystemUIGoogle.vdex:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SystemUIGoogle/oat/arm64/SystemUIGoogle.vdex \
	vendor/google/pixelapps/system_ext/SettingsGoogle/SettingsGoogle.apk.prof:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SettingsGoogle/SettingsGoogle.apk.prof \
	vendor/google/pixelapps/system_ext/SettingsGoogle/oat/arm64/SettingsGoogle.art:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SettingsGoogle/oat/arm64/SettingsGoogle.art \
	vendor/google/pixelapps/system_ext/SettingsGoogle/oat/arm64/SettingsGoogle.odex:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SettingsGoogle/oat/arm64/SettingsGoogle.odex \
	vendor/google/pixelapps/system_ext/SettingsGoogle/oat/arm64/SettingsGoogle.vdex:$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/SettingsGoogle/oat/arm64/SettingsGoogle.vdex \


# system_ext/app
PRODUCT_PACKAGES += \
    SystemUIGoogle \
    SettingsGoogle