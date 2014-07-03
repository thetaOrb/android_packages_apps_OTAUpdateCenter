LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under,src)

LOCAL_STATIC_JAVA_LIBRARIES := \
 	android-support-v4 \
	gcm

LOCAL_PACKAGE_NAME := OTAUpdateCenter

LOCAL_PROGUARD_FLAG_FILES := proguard.cfg

LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := gcm:libs/gcm.jar

include $(BUILD_MULTI_PREBUILT)
