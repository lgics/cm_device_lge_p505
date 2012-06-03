-include vendor/lge/p505/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk


# Nedeed for sensors
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

TARGET_KERNEL_CONFIG := cyanogenmod_p505_defconfig

TARGET_BOOTLOADER_BOARD_NAME := p505
TARGET_OTA_ASSERT_DEVICE := thunderg,p505

BOARD_KERNEL_CMDLINE := mem=88M console=ttyDCC0 androidboot.hardware=p505 no_console_suspend

USE_CAMERA_STUB := false

