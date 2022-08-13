TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.c

# 版本号可能需要修改，根据你自己实际安装的地址为准
INCLUDEPATH += "/usr/local/Cellar/sdl2/2.0.22/include"


#LIBS += -liconv


# 默认是动态库的链接
LIBS += -L/usr/local/Cellar/sdl2/2.0.22/lib -lSDL2
