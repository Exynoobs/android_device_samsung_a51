$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Product API level
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_q.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a51/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_a51
PRODUCT_DEVICE := a51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A515F
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := A515F
PRODUCT_PDA_MODEL_VERSION := XXU4DUB1
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a51nsxx \
    PRODUCT_DEVICE=a51 \
    PRIVATE_BUILD_DESC="a51nsxx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := samsung/a51nsxx/a51:11/RP1A.200720.012/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif
