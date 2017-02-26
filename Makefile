DEBUG = 0
PACKAGE_VERSION = 1.0.0
TARGET = iphone:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Twitter3DShortcuts
Twitter3DShortcuts_FILES = Tweak.xm
Twitter3DShortcuts_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk