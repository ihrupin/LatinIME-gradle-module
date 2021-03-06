#
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
#
LOCAL_PATH := $(call my-dir)
test_makefile := external/libcxx/test/thread/thread.mutex/thread.lock/thread.lock.shared/thread.lock.shared.mod/Android.mk

test_name := thread/thread.mutex/thread.lock/thread.lock.shared/thread.lock.shared.mod/release
test_src := release.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := thread/thread.mutex/thread.lock/thread.lock.shared/thread.lock.shared.mod/member_swap
test_src := member_swap.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := thread/thread.mutex/thread.lock/thread.lock.shared/thread.lock.shared.mod/nonmember_swap
test_src := nonmember_swap.pass.cpp
include external/libcxx/test/Android.build.mk

include $(call all-makefiles-under,$(LOCAL_PATH))