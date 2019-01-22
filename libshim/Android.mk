include $(call all-makefiles-under,$(LOCAL_PATH))

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := ys_audio.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libshim_audio
LOCAL_C_INCLUDES := \
    external/icu/icu4c/source/common

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)