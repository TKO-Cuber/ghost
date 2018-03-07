ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DockBeGone
DockBeGone_FILES = Tweak.xm
DockBeGone_FRAMEWORKS = SpringBoard

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
