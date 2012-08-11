-include vendor/lge/p506/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_p505_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p506 no_console_suspend

TARGET_BOOTLOADER_BOARD_NAME := p506
TARGET_OTA_ASSERT_DEVICE := thunderg,p506

USE_CAMERA_STUB := false

TARGET_PROVIDES_LIBAUDIO := true
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB
# Enable ICS-backwards compatibility    
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
TARGET_DISABLE_ARM_PIE := true

# Fix this up by examining /proc/mtd on a running device
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0cc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xb400000
BOARD_FLASH_BLOCK_SIZE := 131072
