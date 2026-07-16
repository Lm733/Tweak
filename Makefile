# Rootless 關鍵開關
export THEOS_PACKAGE_SCHEME = rootless
export THEOS=/theos # 確認你的路徑正確
export ARCHS = arm64
export TARGET = iphone:clang:15.6:15.6 # 修改為你需要的版本

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = NOC相機
$(APPLICATION_NAME)_FILES = main.swift Core/*.swift Models/*.swift Views/*.swift
$(APPLICATION_NAME)_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore
$(APPLICATION_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
