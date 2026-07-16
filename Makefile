# 設定 Theos 變數
export THEOS=/theos # 你的 theos 安裝路徑
export ARCHS = arm64
export TARGET = iphone:clang:15.6:15.6 # 設定 SDK

include $(THEOS)/makefiles/common.mk

# 這裡定義你的 App 名稱與目標
APPLICATION_NAME = NOC相機
$(APPLICATION_NAME)_FILES = main.swift Core/*.swift Models/*.swift Views/*.swift
$(APPLICATION_NAME)_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore
$(APPLICATION_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
