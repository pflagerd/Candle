candle
-----------
GRBL controller application with G-Code visualizer written in Qt.

Supported functions:
* Controlling GRBL-based cnc-machine via console commands, buttons on form, numpad.
* Monitoring cnc-machine state.
* Loading, editing, saving and sending of G-code files to cnc-machine.
* Visualizing G-code files.

System requirements for running "candle":
-------------------
* Windows/Linux
* CPU with SSE2 instruction set support
* Graphics card with OpenGL 2.0 support
* 120 MB free storage space

Downloads:
----------
Experimental versions:

* [Version 1.2b release](https://github.com/Denvi/Candle/releases/tag/v1.2b)


For GRBL v1.1 firmware

* Windows: [candle_1.1.7.zip](https://github.com/Denvi/Candle/releases/download/v1.1/Candle_1.1.7.zip)
* Linux: [candle_1.1.7.tar.gz](https://github.com/Denvi/Candle/releases/download/v1.1/Candle_1.1.7.tar.gz)

(for GRBL v0.9 and below use Candle 1.0)

Before creating new issue:
------
Candle works with CNC controlled by GRBL firmware, many problems can be solved by using proper version of GRBL, using proper configuration.

Please read GRBL wiki: 
- GRBL v0.9-: https://github.com/grbl/grbl/wiki
- GRBL v1.1: https://github.com/gnea/grbl/wiki

## How to Build on Debian derivatives

To build Experimental:

- Install QT5 & other pre-requirements
  `sudo apt-get install -y cmake g++ make qt5-default qtscript5-dev qttools5-dev qttools5-dev-tools libqt5serialport5-dev libqt5opengl5-dev qtmultimedia5-dev libqt5multimediawidgets5 libqt5multimedia5-plugins libqt5multimedia5 libqt5designercomponents5 libqt5designer5 qtcreator`  

- Clone Candle
  ```git clone https://github.com/pflagerd/Candle.git```

- Build Candle

  `# Please don't be alarmed by warnings during the build.`

  `cd candle`/src

  `qmake`

  `make`

* The last lines of the successful build should look something like this:

  ````
  ```
  g++ -c -pipe -O2 -std=gnu++11 -Wall -Wextra -D_REENTRANT -fPIC -DUNIX -DsNan="65536" -DAPP_VERSION=\"1.1.8\" -D_USE_MATH_DEFINES -DQT_NO_DEBUG -DQT_OPENGL_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_SERIALPORT_LIB -DQT_CORE_LIB -I. -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtOpenGL -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtSerialPort -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I. -I. -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -o moc_sliderbox.o moc_sliderbox.cpp
  g++ -Wl,-rpath,'$ORIGIN/libs' -Wl,-O1 -o Candle main.o frmmain.o frmsettings.o frmabout.o gcodedrawer.o heightmapborderdrawer.o heightmapgriddrawer.o heightmapinterpolationdrawer.o origindrawer.o shaderdrawable.o tooldrawer.o arcproperties.o gcodeparser.o gcodepreprocessorutils.o gcodeviewparse.o linesegment.o pointsegment.o gcodetablemodel.o heightmaptablemodel.o colorpicker.o combobox.o groupbox.o scrollarea.o styledtoolbutton.o widget.o glwidget.o slider.o sliderbox.o selectiondrawer.o comboboxkey.o qrc_shaders.o qrc_images.o moc_frmmain.o moc_frmsettings.o moc_frmabout.o moc_gcodedrawer.o moc_gcodeparser.o moc_gcodepreprocessorutils.o moc_gcodeviewparse.o moc_gcodetablemodel.o moc_heightmaptablemodel.o moc_colorpicker.o moc_combobox.o moc_groupbox.o moc_scrollarea.o moc_widget.o moc_glwidget.o moc_slider.o moc_sliderbox.o   /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so /usr/lib/x86_64-linux-gnu/libQt5Widgets.so /usr/lib/x86_64-linux-gnu/libQt5Gui.so /usr/lib/x86_64-linux-gnu/libQt5SerialPort.so /usr/lib/x86_64-linux-gnu/libQt5Core.so -lGL -lpthread 
  ```
  ````

- Launch Candle
  `./Candle`

* You should see something like this:

  ![image-20230427121146237](screenshots/image-20230427121146237.png)
