#
# Copyright (C) 2022 The LineageOS Project
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

COMMON_PATH := device/samsung/exynos850-common

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# init
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/init/fstab.exynos850:$(TARGET_COPY_OUT_RAMDISK)/fstab.exynos850 \
    $(COMMON_PATH)/configs/init/fstab.exynos850:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.exynos850 \
    $(COMMON_PATH)/configs/init/init.exynos850.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.exynos850.rc \
    $(COMMON_PATH)/configs/init/init.exynos850.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.exynos850.usb.rc \
    $(COMMON_PATH)/configs/init/init.recovery.exynos850.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.exynos850.rc \
    $(COMMON_PATH)/configs/ueventd/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc
