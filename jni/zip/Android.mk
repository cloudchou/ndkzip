LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
          crc32.c \
          crypt.c \
          deflate.c \
          fileio.c \
          globals.c \
          trees.c \
          ttyio.c \
          unix/unix.c \
          util.c \
          zbz2err.c \
          zip.c \
          zipfile.c \
          zipup.c 

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
        $(LOCAL_PATH) /../bzip2
LOCAL_CFLAGS += -Wno-error=format-security -DANDROID -DUNIX -DBZIP2_SUPPORT -DUIDGID_NOT_16BIT -DUNICODE_SUPPORT -DHAVE_DIRENT_H -DHAVE_TERMIOS_H
LOCAL_STATIC_LIBRARIES := libc libbz
LOCAL_MODULE := zip
LOCAL_MODULE_TAGS := eng debug
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)


