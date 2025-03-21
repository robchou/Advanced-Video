# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Tools.
# ------------------------------------------------------
QT += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TEMPLATE = app
TARGET = demo
DESTDIR = $$PWD/bin


win32 {
    INCLUDEPATH += $$PWD/ \
                   $$PWD/nertc_sdk/api/ \

    CONFIG(debug, debug|release) {
        LIBS += -L$$PWD/nertc_sdk/lib/x86 -lnertc_sdk
    } else {
        LIBS += -L$$PWD/nertc_sdk/lib/x86 -lnertc_sdk
    }

    QMAKE_CXXFLAGS += -wd4100 /utf-8
}


macx {
    INCLUDEPATH += $$PWD/ \
                   $$PWD/nertc_sdk/mac/NEFundation_Mac.framework/Headers \
                   $$PWD/nertc_sdk/mac/nertc_sdk_Mac.framework/Headers

    LIBS +=  -F$$PWD/nertc_sdk/mac -framework NEFundation_Mac -framework core_Mac -framework nertc_sdk_Mac




    NEFUNDATION_FRAMEWORK.files = $$PWD/nertc_sdk/mac/NEFundation_Mac.framework
    NEFUNDATION_FRAMEWORK.path = /Contents/Frameworks

    CORE_FRAMEWORK.files = $$PWD/nertc_sdk/mac/core_Mac.framework
    CORE_FRAMEWORK.path = /Contents/Frameworks


    NERTC_SDK_FRAMEWORK.files = $$PWD/nertc_sdk/mac/nertc_sdk_Mac.framework
    NERTC_SDK_FRAMEWORK.path = /Contents/Frameworks


    QMAKE_BUNDLE_DATA += NEFUNDATION_FRAMEWORK \
                         CORE_FRAMEWORK \
                         NERTC_SDK_FRAMEWORK
}

#MOC_DIR += .
#OBJECTS_DIR += debug
#UI_DIR += .
#RCC_DIR += .
include(NERtcSample-VideoStream.pri)
