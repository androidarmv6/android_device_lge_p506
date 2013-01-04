# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for p506.
$(call inherit-product, device/lge/p506/p506.mk)

TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320
$(call inherit-product, vendor/cm/config/tiny.mk)

# Overrides
PRODUCT_NAME := cm_p506
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p506
PRODUCT_MODEL := LG-P506
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusThrive
PRODUCT_VERSION_DEVICE_SPECIFIC :=

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_p506 \
    BUILD_FINGERPRINT="lge/thunderg/thunderg:2.3.3/GRJ22/LG-P506-V11f.19E55B0D28:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderg-user 2.3.3 GRJ22 LG-P506-V11f.19E55B0D28 release-keys"
