// Bar.qml
import Quickshell
import ".."

Scope {
  PanelWindow {
    required property var modelData
    anchors {
      top: true
      left: true
      right: true
    }
    implicitHeight: 24
    color: Config.palette.bg
    ClockWidget {
      anchors {
        right: parent.right
        verticalCenter: parent.verticalCenter
        rightMargin: 8
      }
    }
  }
}

