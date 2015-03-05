LOCAL_PATH := $(call my-dir)
#bzip2
include $(CLEAR_VARS) 
LOCAL_ARM_MODE := arm 
bzlib_files := \
	bzip2/blocksort.c \
	bzip2/huffman.c \
	bzip2/crctable.c \
	bzip2/randtable.c \
	bzip2/compress.c \
	bzip2/decompress.c \
	bzip2/bzlib.c 
LOCAL_SRC_FILES := $(bzlib_files)
LOCAL_MODULE := bz
LOCAL_CFLAGS += -O3 -DUSE_MMAP 
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/bzip2
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
          zip/crc32.c \
          zip/crypt.c \
          zip/deflate.c \
          zip/fileio.c \
          zip/globals.c \
          zip/trees.c \
          zip/ttyio.c \
          zip/unix/unix.c \
          zip/util.c \
          zip/zbz2err.c \
          zip/zip.c \
          zip/zipfile.c \
          zip/zipup.c 
TARGET_FORMAT_STRING_CFLAGS := 
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/zip
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/zip
LOCAL_CFLAGS += -Wno-error=format-security -DANDROID -DUNIX -DBZIP2_SUPPORT -DUIDGID_NOT_16BIT -DUNICODE_SUPPORT -DHAVE_DIRENT_H -DHAVE_TERMIOS_H
LOCAL_MODULE := zip 
LOCAL_LDFLAGS += -static
LOCAL_STATIC_LIBRARIES := bz
include $(BUILD_EXECUTABLE)
 