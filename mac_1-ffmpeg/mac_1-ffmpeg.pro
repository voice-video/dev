TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.c

#INCLUDEPATH+=/usr/local/Cellar/ffmpeg/3.4.2/include
INCLUDEPATH += "/usr/local/ffmpeg/include"


#LIBS += -liconv


# 默认是动态库的链接
LIBS += -L/usr/local/ffmpeg/lib -lavcodec -lavdevice -lavfilter -lavformat -lavutil -lpostproc -lswscale


# 明确使用静态库
#LIBS += /usr/local/ffmpeg/lib/libavcodec.a \
#        /usr/local/ffmpeg/lib/libavdevice.a \
#        /usr/local/ffmpeg/lib/libavfilter.a \
#        /usr/local/ffmpeg/lib/libavformat.a \
#        /usr/local/ffmpeg/lib/libavutil.a \
#        /usr/local/ffmpeg/lib/libswresample.a \
#        /usr/local/ffmpeg/lib/libswscale.a

# 明确使用动态库
#LIBS += /usr/local/ffmpeg/lib/libavcodec.dylib \
#        /usr/local/ffmpeg/lib/libavdevice.dylib \
#        /usr/local/ffmpeg/lib/libavfilter.dylib \
#        /usr/local/ffmpeg/lib/libavformat.dylib \
#        /usr/local/ffmpeg/lib/libavutil.dylib \
#        /usr/local/ffmpeg/lib/libswresample.dylib \
#        /usr/local/ffmpeg/lib/libswscale.dylib
