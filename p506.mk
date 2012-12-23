PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product, vendor/lge/p506/p506-vendor.mk)
$(call inherit-product, vendor/lge/msm7x27-common/msm7x27-common-vendor-blobs.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p506/overlay

# p506 configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc

# p506 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.p506.rc:root/init.p506.rc \
    $(LOCAL_PATH)/ueventd.p506.rc:root/ueventd.p506.rc

# p506 Audio
PRODUCT_PACKAGES += \
    audio_policy.p506 \
    audio.primary.p506

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := p506
PRODUCT_DEVICE := p506
PRODUCT_MODEL := LG-P506

