# Copyright 2016 The Fuchsia Authors
# Copyright (c) 2008-2015 Travis Geiselbrecht
#
# Use of this source code is governed by a MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_DEPS += \
    kernel/lib/fbl \
    kernel/lib/pretty \
    kernel/lib/user_copy \
    third_party/lib/cryptolib

MODULE_SRCS += \
    $(LOCAL_DIR)/bootalloc.cpp \
    $(LOCAL_DIR)/bootreserve.cpp \
    $(LOCAL_DIR)/kstack.cpp \
    $(LOCAL_DIR)/page.cpp \
    $(LOCAL_DIR)/page_alloc_request.cpp \
    $(LOCAL_DIR)/pinned_vm_object.cpp \
    $(LOCAL_DIR)/pmm.cpp \
    $(LOCAL_DIR)/pmm_arena.cpp \
    $(LOCAL_DIR)/pmm_node.cpp \
    $(LOCAL_DIR)/vm.cpp \
    $(LOCAL_DIR)/vm_address_region.cpp \
    $(LOCAL_DIR)/vm_address_region_or_mapping.cpp \
    $(LOCAL_DIR)/vm_aspace.cpp \
    $(LOCAL_DIR)/vm_mapping.cpp \
    $(LOCAL_DIR)/vm_object.cpp \
    $(LOCAL_DIR)/vm_object_paged.cpp \
    $(LOCAL_DIR)/vm_object_physical.cpp \
    $(LOCAL_DIR)/vm_page_list.cpp \
    $(LOCAL_DIR)/vm_unittest.cpp \
    $(LOCAL_DIR)/vm_worker.cpp \
    $(LOCAL_DIR)/vmm.cpp \

include make/module.mk
