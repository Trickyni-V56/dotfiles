//@ pragma Env QT_QPA_PLATFORM=wayland
import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  FontLoader {
    id: fontProggy
    source: "fonts/ProggyCleanSZNerdFontMono-Regular.ttf"
  }
  FontLoader {
    id: fontIcons
    source: "fonts/SymbolsNerdFontMono-Regular.ttf"
  }
  Bar {}
  Workspaces {}
}
