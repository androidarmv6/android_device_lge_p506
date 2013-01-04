# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# p506 configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# p506 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.p506.rc:root/init.p506.rc \
    $(LOCAL_PATH)/ueventd.p506.rc:root/ueventd.p506.rc
    
# P506 bluetooth vendor configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# p506 Audio
PRODUCT_PACKAGES += \
    audio_policy.p506 \
    audio.primary.p506

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Inherit products (Most specific first)
$(call inherit-product, vendor/lge/p506/p506-vendor.mk)
$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product, vendor/lge/msm7x27-common/msm7x27-common-vendor-blobs.mk)

# Overrides
PRODUCT_NAME := p506
PRODUCT_DEVICE := p506
PRODUCT_MODEL := LG-P506
PRODUCT_MANUFACTURER := LGE

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/mdpi-common/mdpi.mk)

# P500 overlays (Most specific last)
DEVICE_PACKAGE_OVERLAYS += device/lge/p506/overlay
