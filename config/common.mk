include vendor/xdroid/config/packages.mk
include vendor/xdroid/config/version.mk
include vendor/xdroid/config/opt.mk
include vendor/xdroid/config/props.mk
include vendor/xdroidui/config.mk

-include $(sort $(wildcard vendor/*/*/exclude-bp.mk))
-include $(WORKSPACE)/build_env/image-auto-bits.mk

$(call inherit-product-if-exists, vendor/extra/product.mk)
$(call inherit-product-if-exists, vendor/gms/config.mk)