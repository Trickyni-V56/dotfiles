import Quickshell
import Quickshell.I3
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import ".."

// RowLayout {
//   id: workspaces
//   spacing: 3                                    // space between workspace buttons
//   anchors.left: parent.left                     // align to left edge of the parent
//   anchors.verticalCenter: parent.verticalCenter // vertically center within parent
// }

Text {
  text: I3.workspaces.number
  color: Config.palette.fg
  anchors.left: parent.left
  anchors.verticalCenter: parent.verticalCenter
  //font.family: fontProggy.name
  // font.pixelSize: 16
  font.pixelSize: 12
}
