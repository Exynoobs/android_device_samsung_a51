#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/samsung/exynos9611-common/BoardConfigPlatform.mk
include vendor/samsung/a51/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/a51

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

PRODUCT_PLATFORM := exynos9611

TARGET_OTA_ASSERT_DEVICE := a51

TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/hardware/include

### DISPLAY
TARGET_SCREEN_DENSITY := 420

### KERNEL
TARGET_KERNEL_CONFIG := exynos9610-a51xx_defconfig

### SYSTEM PROPS
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

### VENDOR SECURITY PATCH DATE
VENDOR_SECURITY_PATCH := 2020-02-01

### VENDOR PROPS
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
