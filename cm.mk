# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for p500.
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
    BUILD_FINGERPRINT="lge/thunderg/thunderg:2.3.4/GRJ22/LG-P505-V20f.19E55B0D28:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderg-user 2.3.4 GRJ22 LG-P505-V20f.19E55B0D28 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusPhoenix
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
