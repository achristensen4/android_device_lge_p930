USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/p930/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := p930

TARGET_NO_RADIOIMAGE := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

BOARD_KERNEL_CMDLINE := vmalloc=400M,console=ttyDCC0,115200,n8 androidboot.hardware=iprj
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x41a00000

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogenmod_p930_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/p930/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 527433728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2004621312
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_TOUCH_RECOVERY := true
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p930/recovery-gfx.c
TARGET_USERIMAGES_USE_EXT4 := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ROTATOR_KERNEL_FORMATS -DHAVE_FM_RADIO -DWITH_QCOM_LPA -DSURFACEFLINGER_FORCE_SCREEN_RELEASE


TARGET_SPECIFIC_HEADER_PATH := device/lge/p930/include

USE_OPENGL_RENDERER := true

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_OVERLAY := true
TARGET_HAVE_BYPASS  := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := true
TARGET_QCOM_HDMI_RESOLUTION_AUTO := true
TARGET_FORCE_CPU_UPLOAD := false
BOARD_USES_QCOM_LIBS := true
BOARD_EGL_CFG := device/lge/p930/egl.cfg
TARGET_USES_ION := true
TARGET_NO_BYPASS_CROPPING := true

DYNAMIC_SHARED_LIBV8SO := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

#BOARD_USES_AUDIO_LEGACY := true
#TARGET_PROVIDES_LIBAUDIO := true
TARGET_USES_QCOM_LPA := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := p930
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

