QT += testlib
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle

TEMPLATE = app

SOURCES +=  tst_tiff_4_0_10.cpp

android {
  equals(ANDROID_TARGET_ARCH, armeabi-v7a) {
    # tiff
    LIBS += -L$$(BAD_PATH)/extracted/tiff-4.0.10-armv7-a-build/lib/ -ltiff
    INCLUDEPATH += $$(BAD_PATH)/extracted/tiff-4.0.10-armv7-a-build/include

    ANDROID_EXTRA_LIBS += \
      $$(BAD_PATH)/extracted/tiff-4.0.10-armv7-a-build/lib/libtiff.so
  }
}
