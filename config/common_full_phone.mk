# Inherit mobile full common xdroidOSS stuff
$(call inherit-product, vendor/xdroid/config/common_mobile.mk)

# Enable support of one-handed mode and BT auto-on
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true \
    bluetooth.server.automatic_turn_on=true

$(call inherit-product, vendor/xdroid/config/telephony.mk)
