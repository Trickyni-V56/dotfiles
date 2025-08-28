import Quickshell
import Quickshell.I3
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import ".."

//TODO

RowLayout {
  id: workspaces
  anchors.left: parent.left
  anchors.verticalCenter: parent.verticalCenter
  property var wsList: I3.workspaces.values
  Repeater {
    model: parent.wsList
    // Button {
    Text {
      id: wsLabel
      anchors.verticalCenter: parent.verticalCenter
      // contentItem: Text {
        // horizontalAlignment: Text.AlignHCenter
        // verticalAlignment: Text.AlignVCenter
        height: 8
        width: 8
        text: modelData.name
        color: Config.palette.fg
        // font.pixelSize: Config.font.size
        // font.family: Config.font.family
          // onPressed: event => {
          //   I3.dispatch(`workspace ` + modelData.number);
          //   event.accepted = true;
          // }
      // }
    }
  }
}

