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

#
# This file is the build configuration for a full Android
# build for toro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and toro, hence its name.
#

# Extra Apps and files
PRODUCT_COPY_FILES += \
    vendor/samsung/i777/Alert-SonarMerge.mp3:system/media/audio/notifications/Alert-SonarMerge.mp3 \
    vendor/samsung/i777/IphoneCellSoundMerge.mp3:system/media/audio/ringtones/IphoneCellSoundMerge.mp3

# Copy Animation Files
PRODUCT_COPY_FILES += \
    vendor/samsung/i777/keyboard-anim/Bouncey.zip:system/addon.d/keyboard-anim/Bouncey.zip \
    vendor/samsung/i777/keyboard-anim/Chaos.zip:system/addon.d/keyboard-anim/Chaos.zip \
    vendor/samsung/i777/keyboard-anim/ChaosRevenge.zip:system/addon.d/keyboard-anim/ChaosRevenge.zip \
    vendor/samsung/i777/keyboard-anim/Eternity.zip:system/addon.d/keyboard-anim/Eternity.zip \
    vendor/samsung/i777/keyboard-anim/Flip.zip:system/addon.d/keyboard-anim/Flip.zip \
    vendor/samsung/i777/keyboard-anim/Photon.zip:system/addon.d/keyboard-anim/Photon.zip \
    vendor/samsung/i777/keyboard-anim/Spinner.zip:system/addon.d/keyboard-anim/Spinner.zip \
    vendor/samsung/i777/keyboard-anim/Stock.zip:system/addon.d/keyboard-anim/Stock.zip \
    vendor/samsung/i777/keyboard-anim/TeamDerpTheme.zip:system/addon.d/keyboard-anim/TeamDerpTheme.zip \
    vendor/samsung/i777/keyboard-anim/ThePsynFlip.zip:system/addon.d/keyboard-anim/ThePsynFlip.zip \
    vendor/samsung/i777/keyboard-anim/ThePsynShift.zip:system/addon.d/keyboard-anim/ThePsynShift.zip \
    vendor/samsung/i777/keyboard-anim/TwistedRubik.zip:system/addon.d/keyboard-anim/TwistedRubik.zip \
    vendor/samsung/i777/keyboard-anim/Vortex.zip:system/addon.d/keyboard-anim/Vortex.zip \
    vendor/samsung/i777/window-anim/Bouncey.zip:system/addon.d/window-anim/Bouncey.zip \
    vendor/samsung/i777/window-anim/Chaos.zip:system/addon.d/window-anim/Chaos.zip \
    vendor/samsung/i777/window-anim/ChaosRevenge.zip:system/addon.d/window-anim/ChaosRevenge.zip \
    vendor/samsung/i777/window-anim/Eternity.zip:system/addon.d/window-anim/Eternity.zip \
    vendor/samsung/i777/window-anim/Flip.zip:system/addon.d/window-anim/Flip.zip \
    vendor/samsung/i777/window-anim/Photon.zip:system/addon.d/window-anim/Photon.zip \
    vendor/samsung/i777/window-anim/Stock.zip:system/addon.d/window-anim/Stock.zip \
    vendor/samsung/i777/window-anim/TeamDerpTheme.zip:system/addon.d/window-anim/TeamDerpTheme.zip \
    vendor/samsung/i777/window-anim/ThePsynFlip.zip:system/addon.d/window-anim/ThePsynFlip.zip \
    vendor/samsung/i777/window-anim/ThePsynShift.zip:system/addon.d/window-anim/ThePsynShift.zip \
    vendor/samsung/i777/window-anim/TwistedRubik.zip:system/addon.d/window-anim/TwistedRubik.zip \
    vendor/samsung/i777/window-anim/Vortex.zip:system/addon.d/window-anim/Vortex.zip \
    vendor/samsung/i777/com.aokp.animation.manager.apk:system/app/com.aokp.animation.manager.apk \
    vendor/samsung/i777/framework-flash.zip:system/addon.d/framework-flash.zip

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/samsung/i777/i777.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_i777
PRODUCT_DEVICE := i777
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I777
