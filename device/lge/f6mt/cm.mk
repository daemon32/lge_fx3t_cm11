## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH  := 540

# Release name
PRODUCT_RELEASE_NAME := f6

# NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/f6mt/device_f6mt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f6mt
PRODUCT_NAME := cm_f6mt
PRODUCT_BRAND := MetroPCS
PRODUCT_MODEL := LG-MS500
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=f6mt
