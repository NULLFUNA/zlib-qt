CONFIG -= qt

TEMPLATE = lib
DEFINES += ZLIB_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    crc32.h \
    inffast.h \
    inffixed.h \
    inflate.h \
    inftrees.h \
    zconf.h \
    zlib.h \
    zutil.h

SOURCES += \
    adler32.c \
    crc32.c \
    inffast.c \
    inflate.c \
    inftrees.c \
    zutil.c
