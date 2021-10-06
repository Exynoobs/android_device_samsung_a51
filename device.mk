# Inherit from the common tree
$(call inherit-product, device/samsung/exynos9611-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/a51/a51-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage
