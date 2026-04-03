# Inherit mobile full common xdroidOSS stuff
$(call inherit-product, vendor/xdroid/config/common_mobile.mk)

# Inherit tablet common xdroidOSS stuff
$(call inherit-product, vendor/xdroid/config/tablet.mk)

$(call inherit-product, vendor/xdroid/config/wifionly.mk)
