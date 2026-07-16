# 宣告 Rootless 模式
export THEOS_PACKAGE_SCHEME = rootless

# 只需要這行引用 common.mk 來獲取打包指令
include $(THEOS)/makefiles/common.mk

# 這是空的，因為你不需要編譯任何東西，你只需要打包
# 只要執行 make package，Theos 就會自動把 layout 資料夾裡的東西封裝起來
include $(THEOS_MAKE_PATH)/package.mk
