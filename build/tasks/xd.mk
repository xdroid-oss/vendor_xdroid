# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# xdroidOSS OTA update package

XDROID_TARGET_PACKAGE := $(PRODUCT_OUT)/$(XDROID_REVISION).zip
XDROID_TARGET_UPDATEPACKAGE := $(PRODUCT_OUT)/$(XDROID_REVISION)-fastboot.zip

MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

.PHONY: xd
xd: $(DEFAULT_GOAL) $(INTERNAL_OTA_PACKAGE_TARGET) $(INTERNAL_UPDATE_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(XDROID_TARGET_PACKAGE)
	$(hide) $(MD5) $(XDROID_TARGET_PACKAGE) > $(XDROID_TARGET_PACKAGE).md5sum
	$(hide) ln -f $(INTERNAL_UPDATE_PACKAGE_TARGET) $(XDROID_TARGET_UPDATEPACKAGE)
	$(hide) $(MD5) $(XDROID_TARGET_UPDATEPACKAGE) > $(XDROID_TARGET_UPDATEPACKAGE).md5sum
	@echo -e ""
	@echo -e ${CL_GRN}"  xdroidOSS Build Complete  "${CL_RST}
	@echo -e ""
	@echo -e ${CL_CYN}"  ┌── OTA Package Details"${CL_RST}
	@echo -e ${CL_CYN}"  │ "${CL_RST}"File: "${CL_MAG}$(notdir $(XDROID_TARGET_PACKAGE))${CL_RST}
	@echo -e ${CL_CYN}"  │ "${CL_RST}"MD5:  "${CL_MAG}$(shell cat $(XDROID_TARGET_PACKAGE).md5sum | awk '{print $$1}')${CL_RST}
	@echo -e ${CL_CYN}"  └ "${CL_RST}"Size: "${CL_MAG}$(shell du -hs $(XDROID_TARGET_PACKAGE) | awk '{print $$1}')${CL_RST}
	@echo -e ""
	@echo -e ${CL_CYN}"  ┌── Fastboot Package Details"${CL_RST}
	@echo -e ${CL_CYN}"  │ "${CL_RST}"File: "${CL_MAG}$(notdir $(XDROID_TARGET_UPDATEPACKAGE))${CL_RST}
	@echo -e ${CL_CYN}"  │ "${CL_RST}"MD5:  "${CL_MAG}$(shell cat $(XDROID_TARGET_UPDATEPACKAGE).md5sum | awk '{print $$1}')${CL_RST}
	@echo -e ${CL_CYN}"  └ "${CL_RST}"Size: "${CL_MAG}$(shell du -hs $(XDROID_TARGET_UPDATEPACKAGE) | awk '{print $$1}')${CL_RST}
	@echo -e ""
	@echo -e ${CL_CYN}"  Build Type: "${CL_MAG}$(XDROID_BUILD_TYPE)${CL_RST}
	@echo -e ""
