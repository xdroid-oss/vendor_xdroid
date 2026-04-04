$(call inherit-product-if-exists, vendor/extra/product.mk)

include vendor/xdroid/config/packages.mk
include vendor/xdroid/config/version.mk
include vendor/xdroid/config/opt.mk
include vendor/xdroid/config/props.mk

-include $(sort $(wildcard vendor/*/*/exclude-bp.mk))
-include $(WORKSPACE)/build_env/image-auto-bits.mk
