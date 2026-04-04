# Credential storage
PRODUCT_PACKAGES += \
    android.software.credentials.prebuilt.xml

# Component overrides
PRODUCT_PACKAGES += \
    xdroid-component-overrides.xml

# Lineage interfaces
PRODUCT_PACKAGES += \
    framework_compatibility_matrix.lineage.xml

ifneq ($(TARGET_DISABLE_EPPE),true)
# Require all requested packages to exist
$(call enforce-product-packages-exist-internal,$(wildcard device/*/$(XDROID_BUILD)/$(TARGET_PRODUCT).mk),product_manifest.xml rild Calendar Launcher3 Launcher3Go Launcher3QuickStep Launcher3QuickStepGo android.hidl.memory@1.0-impl.vendor vndk_apex_snapshot_package)
endif