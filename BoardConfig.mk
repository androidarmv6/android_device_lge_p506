-include vendor/lge/p506/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_p505_p506_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p506 no_console_suspend

TARGET_BOOTLOADER_BOARD_NAME := p506
TARGET_OTA_ASSERT_DEVICE := thunderg,p506

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p506/bluetooth
