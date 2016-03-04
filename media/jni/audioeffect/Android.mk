LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    android_media_AudioEffect.cpp \
    android_media_Visualizer.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libutils \
    libandroid_runtime \
    libnativehelper \
    libmedia

LOCAL_C_INCLUDES := \
    $(call include-path-for, audio-effects)

LOCAL_MODULE:= libaudioeffect_jni

LOCAL_CFLAGS += -Wall  -Wunused -Wunreachable-code

include $(BUILD_SHARED_LIBRARY)
