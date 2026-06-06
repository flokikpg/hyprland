//@ pragma UseQApplication

import "./modules/bar" as Components 
import QtQuick
import Quickshell

ShellRoot {
    id: root

    Loader {
        active: true

        sourceComponent: Components.Bar {
        }

    }

}
