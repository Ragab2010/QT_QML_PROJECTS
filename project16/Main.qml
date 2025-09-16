import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Flickable{
        width: parent.width
        height: parent.height
        contentHeight: columnId.implicitHeight
        Column{
            id:columnId
            anchors.fill: parent
            Rectangle{
                 width: parent.width
                 height: 300
                 color: "green"
                 Text {
                     id: text1
                     text:"Rectangle1"
                     font.pixelSize: 30
                     anchors.centerIn: parent
                 }
            }
            Rectangle{
                 width: parent.width
                 height: 300
                 color: "red"
                 Text {
                     id: text2
                     text:"Rectangle2"
                     font.pixelSize: 30
                     anchors.centerIn: parent
                 }
            }
            Rectangle{
                 width: parent.width
                 height: 300
                 color: "gray"
                 Text {
                     id: text3
                     text:"Rectangle3"
                     font.pixelSize: 30
                     anchors.centerIn: parent
                 }
            }
            Rectangle{
                 width: parent.width
                 height: 300
                 color: "blue"
                 Text {
                     id: text4
                     text:"Rectangle4"
                     font.pixelSize: 30
                     anchors.centerIn: parent
                 }
            }

        }
        ScrollBar.vertical: ScrollBar {
        width: 30
        }
    }
}
