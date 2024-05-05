
for package in cmake g++ make qtbase5-dev qtscript5-dev qttools5-dev qttools5-dev-tools libqt5serialport5-dev libqt5opengl5-dev qtmultimedia5-dev libqt5multimediawidgets5 libqt5multimedia5-plugins libqt5multimedia5 libqt5designercomponents5 libqt5designer5 qtcreator; do
  if ! (sudo apt list --installed $package 2>/dev/null | grep $package > /dev/null); then
    sudo apt install -y $package
  fi
done
