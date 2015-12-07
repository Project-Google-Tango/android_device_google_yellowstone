# Copyright (C) 2012 The Android Open Source Project
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


LOCAL_PATH:= $(call my-dir)


# HAL module implemenation, not prelinked and stored in
# hw/<COPYPIX_HARDWARE_MODULE_ID>.<ro.board.platform>.so
include $(CLEAR_VARS)

LOCAL_CFLAGS := -DLOG_TAG=\"Sensors\"
LOCAL_SRC_FILES := sensors.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += hardware/nvidia/sensors
LOCAL_C_INCLUDES += hardware/nvidia/sensors/mlsdk/driver/include
LOCAL_C_INCLUDES += hardware/nvidia/sensors/mlsdk/driver/include/linux
LOCAL_C_INCLUDES += hardware/nvidia/sensors/mlsdk/HAL/include
LOCAL_C_INCLUDES += hardware/nvidia/sensors/mlsdk/mllite
LOCAL_C_INCLUDES += hardware/nvidia/sensors/mlsdk/mllite/linux
LOCAL_C_INCLUDES += hardware/nvidia/sensors/mlsdk/mpl
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils libdl libsensors.base \
                          libsensors.mpl
LOCAL_CPPFLAGS+=-DLINUX=1
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := sensors.$(TARGET_BOARD_PLATFORM)

include $(BUILD_SHARED_LIBRARY)

