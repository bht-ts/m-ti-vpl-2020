TEMPLATE = app
CONFIG += console c++20
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS +=-msse4.1

SOURCES += \
        main.cpp \
        batch.cpp \
        counting-semaphore.cpp \
        thread-manager-job.cpp \
        thread-manager-jobresult.cpp \
        thread-manager.cpp \
        thread.cpp \
        threadpool.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../libs/beuth-thread/release/ -lbeuth-thread
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../libs/beuth-thread/debug/ -lbeuth-thread
else:unix: LIBS += -L$$OUT_PWD/../../libs/beuth-thread/ -lbeuth-thread

INCLUDEPATH += $$PWD/../../libs/beuth-thread
DEPENDPATH += $$PWD/../../libs/beuth-thread

INCLUDEPATH += $$PWD/../../dependencies/Catch2/single_include
