# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit device configuration
$(call inherit-product, device/google/muskie/walleye/lineage_walleye.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/ariel/config/ariel_common.mk)

include device/google/wahoo/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ariel_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 10 QQ3A.200805.001 6578210 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:10/QQ3A.200805.001/6578210:user/release-keys

# $(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
$(call inherit-product-if-exists, vendor/google_devices/walleye/walleye-vendor-blobs.mk)
