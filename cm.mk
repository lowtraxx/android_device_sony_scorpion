# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Rhine device parts
$(call inherit-product, device/sony/scorpion/aosp_sgp621.mk)

# Inherit CM Rhine device parts
$(call inherit-product, device/sony/shinano/platform2.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Fingerprint for honami (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP621
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/SGP621/SGP621:6.0.1/23.5.A.1.291/3706784398:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="SGP621-user 6.0.1 23.5.A.1.291 3706784398 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := cm_scorpion
PRODUCT_MODEL := Xperia Z3 Tablet Compact
