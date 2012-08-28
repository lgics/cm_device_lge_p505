# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for p505.
$(call inherit-product, device/lge/p505/p505.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_p505
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p505
PRODUCT_MODEL := LG-P505
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_p505 \
    BUILD_FINGERPRINT="lge/thunderg/thunderg:2.3.3/GRI40/LG-P505-V20g.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderg-user 2.3.3 GRI40 LG-P505-V20g.19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusPhoenix
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
