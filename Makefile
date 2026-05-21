export THEOS=/var/mobile/theos
#for rootless change it to var/jb/var/mobile/thoes
ARCHS = arm64
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DrDev

DrDev_FRAMEWORKS = IOKit UIKit Foundation Security QuartzCore CoreGraphics CoreText AVFoundation Accelerate GLKit SystemConfiguration GameController
DrDev_LDFLAGS +=
DrDev_CCFLAGS = -w -std=gnu++14 -fno-rtti -fno-exceptions -DNDEBUG -Wno-module-import-in-extern-c
DrDev_CFLAGS = -w -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value

DrDev_FILES = DrDev.xm

include $(THEOS_MAKE_PATH)/tweak.mk