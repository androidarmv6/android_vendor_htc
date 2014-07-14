# Copyright (C) 2014 The Android Open Source Project
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

# OMX
PRODUCT_COPY_FILES += \
    vendor/htc/msm7x27-common/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
    vendor/htc/msm7x27-common/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    vendor/htc/msm7x27-common/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    vendor/htc/msm7x27-common/proprietary/lib/libmmparser.so:system/lib/libmmparser.so

# Open source camera wrapper that can't be built with current GCC
# https://github.com/SimplicityCM/android_device_htc_msm7x27-common/tree/cm-10.1/libcamera
ifneq (,$(filter chacha,$(CM_BUILD)))
PRODUCT_COPY_FILES += \
    vendor/htc/chacha/proprietary/lib/hw/camera.msm7x27.so:system/lib/hw/camera.msm7x27.so
else
PRODUCT_COPY_FILES += \
    vendor/htc/msm7x27-common/proprietary/lib/hw/camera.msm7x27.so:system/lib/hw/camera.msm7x27.so
endif
