// Timedate.qml
import QtQuick
import Quickshell
import QtQuick.Layouts
import ".."

RowLayout {
  id: timedate
  spacing: 3
  layoutDirection: Qt.RightToLeft
    //
    // anchors {
    //   right: parent.right
    //   verticalCenter: parent.verticalCenter
  Text {
    id: time
    text: Qt.formatDateTime(clock.date, "hh:mm")
    font.pixelSize: Config.font.size
    color: Config.palette.fg
  }
  Sep {}
  Text {
    id: date
    text: Qt.formatDateTime(clock.date, "MMM dd")
    font.pixelSize: Config.font.size
    color: Config.palette.fg
  }
  // Sep {}
  anchors {
    right: parent.right
    verticalCenter: parent.verticalCenter
  }
  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }
}
