# Inherit common CM stuff
$(call inherit-product, vendor/cmb/config/common_full.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=hangouts_message.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cmb/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
