#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Display density
TARGET_SCREEN_DENSITY := 480

# Inherit from sm6150-common
-include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tucana

# Assert
TARGET_OTA_ASSERT_DEVICE := tucana

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_tucana
TARGET_RECOVERY_DEVICE_MODULES := libinit_tucana

# Kernel
TARGET_KERNEL_CONFIG := tucana_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57453555712
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Inherit from the proprietary version
-include vendor/xiaomi/tucana/BoardConfigVendor.mk
