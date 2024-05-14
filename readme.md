candle
-----------
GRBL controller application with G-Code visualizer written in Qt, customized for Genmitsu 4030XL

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


Before creating new issue:
------
Candle works with CNC controlled by GRBL firmware, many problems can be solved by using proper version of GRBL, using proper configuration.

Please read GRBL wiki: 
- GRBL v1.1: https://github.com/gnea/grbl/wiki

## How to Build on Debian derivatives

To build Experimental:

- Install QT5 & other pre-requirements
`sudo apt-get install -y cmake g++ make qtbase5-dev qtscript5-dev qttools5-dev qttools5-dev-tools libqt5serialport5-dev libqt5opengl5-dev qtmultimedia5-dev libqt5multimediawidgets5 libqt5multimedia5-plugins libqt5multimedia5 libqt5designercomponents5 libqt5designer5 qtcreator`

- Clone Candle
```git clone https://github.com/pflagerd/candle.git```

- Build Candle

```
cd candle
cmake .
make -j 16

* The last lines of the successful build should look something like this:

```
g++ -Wl,-rpath,'$ORIGIN/libs' -Wl,-O1 -o candle frmabout.o frmmain.o frmsettings.o main.o gcodedrawer.o heightmapborderdrawer.o heightmapgriddrawer.o heightmapinterpolationdrawer.o origindrawer.o selectiondrawer.o shaderdrawable.o tooldrawer.o arcproperties.o gcodeparser.o gcodepreprocessorutils.o gcodeviewparse.o linesegment.o pointsegment.o gcodetablemodel.o heightmaptablemodel.o colorpicker.o combobox.o comboboxkey.o glwidget.o groupbox.o scrollarea.o slider.o sliderbox.o styledtoolbutton.o widget.o qrc_shaders.o qrc_images.o moc_frmabout.o moc_frmmain.o moc_frmsettings.o moc_gcodedrawer.o moc_gcodeparser.o moc_gcodepreprocessorutils.o moc_gcodeviewparse.o moc_gcodetablemodel.o moc_heightmaptablemodel.o moc_colorpicker.o moc_combobox.o moc_glwidget.o moc_groupbox.o moc_scrollarea.o moc_slider.o moc_sliderbox.o moc_widget.o   /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so /usr/lib/x86_64-linux-gnu/libQt5Widgets.so /usr/lib/x86_64-linux-gnu/libQt5Gui.so /usr/lib/x86_64-linux-gnu/libQt5SerialPort.so /usr/lib/x86_64-linux-gnu/libQt5Core.so -lGL -lpthread
```

- Launch Candle
`./candle`

* You should see something like this:


