### PLATFORM
$(call inherit-product, device/samsung/exynos9611-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/a51/a51-vendor.mk)

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

DEVICE_PATH := device/samsung/a51

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage
