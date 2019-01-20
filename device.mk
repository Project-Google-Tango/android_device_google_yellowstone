#
# Copyright (C) 2018 The LineageOS Project
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
#

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.ardbeg \
    init.ardbeg.rc \
    init.hdcp.rc \
    init.icera.common.rc \
    init.icera.rc \
    init.icera.tablet.rc \
    init.nv_dev_board.usb.rc \
    init.recovery.nv_dev_board.usb.rc \
    init.t124_emmc.rc \
    init.t124.rc \
    init.tlk.rc \
    ueventd.ardbeg.rc

TARGET_RECOVERY_DEVICE_MODULES := rm-wrapper

# Call the proprietary setup
$(call inherit-product, vendor/google/yellowstone/yellowstone-vendor.mk)
