// ClockWidget.qml
import QtQuick

Text {
  text: Time.time
  color: Config.palette.fg
  //font.family: fontProggy.name
  // font.pixelSize: 16
  font.pixelSize: 12
}
