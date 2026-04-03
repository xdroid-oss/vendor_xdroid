# Versioning System
XDROID_BUILD_DATETIME := $(shell date +%s)
XDROID_BUILD_DATE := $(shell date -d @$(XDROID_BUILD_DATETIME) +"%Y%m%d-%H%M%S")
TARGET_PRODUCT_SHORT := $(subst xdroid_,,$(XDROID_BUILD))

XDROID_BUILD_TYPE ?= z0
XDROID_BUILD_VERSION := BP3A
XDROID_VERSION := $(XDROID_BUILD_VERSION)-$(XDROID_BUILD_TYPE)-$(TARGET_PRODUCT_SHORT)-$(XDROID_BUILD_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.xdroid.build.version=$(XDROID_BUILD_VERSION) \
  ro.xdroid.build.date=$(BUILD_DATE) \
  ro.xdroid.buildtype=$(XDROID_BUILD_TYPE) \
  ro.xdroid.version=$(XDROID_VERSION) \
  ro.xdroid.device=$(XDROID_BUILD) \
  ro.modversion=$(XDROID_VERSION)
