import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Easing Curves")

    Flickable {
        anchors.fill: parent
        contentWidth: width
        contentHeight: columnContent.implicitHeight
        clip: true

        Column {
            id: columnContent
            width: parent.width
            spacing: 5

            Repeater {
                model: 15
                delegate: MovedRectange {
                    width: parent.width
                    height: 100
                }
            }
        }
    }
}
