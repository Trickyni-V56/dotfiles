// Bar.qml
import Quickshell
import QtQuick
import ".."

Scope {
  PanelWindow {
    // required property var modelData
    anchors {
      top: true
      left: true
      right: true
    }
    implicitHeight: 24
    color: Config.palette.bg
    Timedate {
      anchors.rightMargin: 8
    }
    // Workspaces {
    //   anchors.leftMargin: 8
    // }
  }
}

