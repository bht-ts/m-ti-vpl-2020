TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp \
        measurement.cpp \
        nosimd.cpp \
        randomizer.cpp \
        variant.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../libs/beuth-math/release/ -lbeuth-math
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../libs/beuth-math/debug/ -lbeuth-math
else:unix: LIBS += -L$$OUT_PWD/../../libs/beuth-math/ -lbeuth-math

INCLUDEPATH += $$PWD/../../libs/beuth-math
DEPENDPATH += $$PWD/../../libs/beuth-math

HEADERS += \
    benchmark.h \
    config.h \
    measurement.h \
    nosimd.h \
    randomizer.h \
    variant.h
