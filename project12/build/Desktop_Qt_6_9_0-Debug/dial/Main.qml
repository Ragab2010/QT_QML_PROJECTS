import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column{
        width: parent.width

        Label{
            text: "Dial"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 30
        }
        Dial{
            anchors.horizontalCenter: parent.horizontalCenter
            from : 0
            to : 100
            value: 4
            //wrap: true
            onValueChanged: {
                console.log(Math.round(value))
            }
            onMoved: {
                console.log("moved")
            }
        }
    }

}
