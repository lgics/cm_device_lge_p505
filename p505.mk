PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/p505/p505-vendor.mk)

# p505 configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc

# p505 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.p505.rc:root/init.p505.rc \
    $(LOCAL_PATH)/ueventd.p505.rc:root/ueventd.p505.rc

# P505 Audio
PRODUCT_PACKAGES += \
    audio_policy.p505 \
    audio.primary.p505

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := p505
PRODUCT_DEVICE := p505
PRODUCT_MODEL := LG-P505

