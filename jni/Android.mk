# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libusb
LOCAL_SRC_FILES := libusb.so
include $(PREBUILT_SHARED_LIBRARY)

   
include $(CLEAR_VARS)
LOCAL_MODULE := liblog
LOCAL_SRC_FILES := liblog.so
include $(PREBUILT_SHARED_LIBRARY)
   
include $(CLEAR_VARS)
LOCAL_MODULE := liboscicontinuous
LOCAL_SRC_FILES := liboscicontinuous.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libtrigger
LOCAL_SRC_FILES := libtrigger.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libvertexcopy
LOCAL_SRC_FILES := libvertexcopy.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libezusb
LOCAL_SRC_FILES := libezusb.so
include $(PREBUILT_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE    := liboscicontinuous
#LOCAL_PRELINK_MODULE := false
#LOCAL_SRC_FILES :=	osciContinuous.c \
#					jniOsciContinuous.c \
#					usberror.c \
#					base.c
#
#LOCAL_C_INCLUDES += libtrigger \
#                    libusb_headers \
#					inc
#                    
#LOCAL_SHARED_LIBRARIES := \
#    libc \
#    libstdc++ \
#    libutils \
#    libusb \
#	liblog
#
#include $(BUILD_SHARED_LIBRARY)
#
#
#include $(CLEAR_VARS)
#LOCAL_MODULE := libtrigger
#LOCAL_SRC_FILES := trigger.c
#LOCAL_SHARED_LIBRARIES := libc liblog 
#include $(BUILD_SHARED_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE := libvertexcopy
#LOCAL_SRC_FILES := vertexcopy.c
#LOCAL_SHARED_LIBRARIES := libc 
#include $(BUILD_SHARED_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE    := ezusb
#LOCAL_SRC_FILES := ezusb.c jniezusb.c
#LOCAL_LDLIBS    += -llog
#include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := sensor
LOCAL_SRC_FILES := sensor.cpp flash.cpp fpga2.cpp socket.cpp
LOCAL_LDLIBS    := -lm -llog -ljnigraphics
include $(BUILD_SHARED_LIBRARY)

