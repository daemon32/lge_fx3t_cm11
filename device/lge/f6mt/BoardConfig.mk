# Inherit from the proprietary version
-include vendor/lge/f6mt/BoardConfigVendor.mk


BOARD_VENDOR := LGE
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

# Kernel
BOARD_CUSTOM_BOOTIMG_MK      := device/lge/f6mt/releasetools/mkbootimg.mk
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom androidboot.selinux=permissive user_debug=31 zcache
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/lge/f6mt
TARGET_KERNEL_CONFIG         := cm_f6mt_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_SPECIFIC_HEADER_PATH := device/lge/f6mt/include
TARGET_NO_INITLOGO := true

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/lge/f6mt/ramdisk/fstab.qcom
TARGET_RECOVERY_INITRC := device/lge/f6mt/recovery/root/init.recovery.rc
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/lcd/panel/backlight\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1291845632
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1384120320
BOARD_CACHEIMAGE_PARTITION_SIZE := 838860800
BOARD_FLASH_BLOCK_SIZE := 131072

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := caf
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/lge/f6mt/proprietary/lib/egl/egl.cfg

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
#BOARD_USES_SEPERATED_VOICE_SPEAKER := true
#BOARD_USES_SEPERATED_VOIP := true
#BOARD_HAVE_DOCK_USBAUDIO := true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_DISPLAY_USE_RETIRE_FENCE := false

# Camera
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT -DNEEDS_VECTORIMPL_SYMBOLS -DLGE_8930_CAMERA_HARDWARE -DICS_CAMERA_BLOB
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
TARGET_DISABLE_ARM_PIE := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_PROVIDES_LIBCAMERA := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
#BOARD_USE_REVERSE_FFC := true
#TARGET_NEED_FFC_PICTURE_FIXUP := true
#BOARD_NEEDS_MEMORYHEAPPMEM := true
#BOARD_NEEDS_MEMORYHEAPION := true
#TARGET_NEED_CAMERA_ZSL := true
#BOARD_CAMERA_HAVE_ISO := true
#COMMON_GLOBAL_CFLAGS += -DHAVE_ISO

#KILLS ALL GRAPHICS FOR SOME REASON 
#COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_CAMERA_ABI_HACK 


# WIFI (BCM4334) BCMDHD
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/f6mt/bluetooth

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# FM
QCOM_FM_ENABLED := true
BOARD_USES_SEPERATED_FM := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# PowerHAL
TARGET_USES_CM_POWERHAL := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_RES := device/lge/f6mt/ramdisk/res/images/charger

# Vold
BOARD_VOLD_MAX_PARTITIONS := 24
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHT := true

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/lge/f6mt/releasetools/ota_from_target_files

# Assert
TARGET_OTA_ASSERT_DEVICE := LGMS500,f6mt

