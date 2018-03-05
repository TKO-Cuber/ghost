include ../theos/makefiles/common.mk

TWEAK_NAME = DockBeGone
DockBeGone_FILES = tweak.xm
DockBeGone_FRAMEWORKS = SpringBoard

include $(THEOS_MAKE_PATH)/Tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
