#-------------------------------------------------
#
# Project created by QtCreator 2014-05-23T17:51:21
#
#-------------------------------------------------

QT       = core gui opengl serialport
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

win32: {
    QT += winextras
    DEFINES += WINDOWS
    QMAKE_LFLAGS += "-Wl,--large-address-aware"
    QMAKE_CXXFLAGS_DEBUG += -g3 -pg
    QMAKE_LFLAGS_DEBUG += -pg -lgmon
}

unix:!macx {
    DEFINES += UNIX #GL_GLEXT_PROTOTYPES
    QMAKE_CXXFLAGS_DEBUG += -g3 -pg -O0
    QMAKE_LFLAGS += "-Wl,-rpath,\'\$$ORIGIN/libs\'"
}

contains(QT_CONFIG, opengles.) {
    warning("GL ES detected. VAO will be disabled.")
    DEFINES += GLES
    INSTALLS += target
    target.path = /home/pi
}

TARGET = candle
TEMPLATE = app
VERSION = 1.1.8
RC_ICONS += images/candle.ico

DEFINES += sNan=\"65536\"
DEFINES += APP_VERSION=\\\"$$VERSION\\\"

TRANSLATIONS += translations/candle_en.ts translations/candle_ru.ts translations/candle_es.ts translations/candle_fr.ts translations/candle_pt.ts

SOURCES += \
    frmabout.cpp \
    frmmain.cpp \
    frmsettings.cpp \
    main.cpp \
    drawers/gcodedrawer.cpp \
    drawers/heightmapborderdrawer.cpp \
    drawers/heightmapgriddrawer.cpp \
    drawers/heightmapinterpolationdrawer.cpp \
    drawers/origindrawer.cpp \
    drawers/selectiondrawer.cpp \
    drawers/shaderdrawable.cpp \
    drawers/tooldrawer.cpp \
    parser/arcproperties.cpp \
    parser/gcodeparser.cpp \
    parser/gcodepreprocessorutils.cpp \
    parser/gcodeviewparse.cpp \
    parser/linesegment.cpp \
    parser/pointsegment.cpp \
    tables/gcodetablemodel.cpp \
    tables/heightmaptablemodel.cpp \
    widgets/colorpicker.cpp \
    widgets/combobox.cpp \
    widgets/comboboxkey.cpp \
    widgets/glwidget.cpp \
    widgets/groupbox.cpp \
    widgets/scrollarea.cpp \
    widgets/slider.cpp \
    widgets/sliderbox.cpp \
    widgets/styledtoolbutton.cpp \
    widgets/widget.cpp

HEADERS +=\
    frmabout.h \
    frmmain.h \
    frmsettings.h \
    drawers/gcodedrawer.h \
    drawers/heightmapborderdrawer.h \
    drawers/heightmapgriddrawer.h \
    drawers/heightmapinterpolationdrawer.h \
    drawers/origindrawer.h \
    drawers/selectiondrawer.h \
    drawers/shaderdrawable.h \
    drawers/tooldrawer.h \
    parser/arcproperties.h \
    parser/gcodeparser.h \
    parser/gcodepreprocessorutils.h \
    parser/gcodeviewparse.h \
    parser/linesegment.h \
    parser/pointsegment.h \
    tables/gcodetablemodel.h \
    tables/heightmaptablemodel.h \
    utils/interpolation.h \
    utils/util.h \
    widgets/colorpicker.h \
    widgets/combobox.h \
    widgets/comboboxkey.h \
    widgets/glwidget.h \
    widgets/groupbox.h \
    widgets/scrollarea.h \
    widgets/slider.h \
    widgets/sliderbox.h \
    widgets/styledtoolbutton.h \
    widgets/widget.h

FORMS += \
    frmabout.ui \
    frmmain.ui \
    frmsettings.ui \
    widgets/sliderbox.ui

DEFINES += _USE_MATH_DEFINES

RESOURCES += \
    shaders.qrc \
    images.qrc

CONFIG += c++11
