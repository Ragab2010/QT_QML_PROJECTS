import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id :rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("ad")
    header: ToolBar{
        height: 50
        background:  Rectangle{
            color: "mintcream"
        }
        RowLayout{
            spacing: 20
            anchors.fill: parent
            ToolButton{
                background: Rectangle{
                    color: "mintcream"
                }
                icon.source: "image/1.jpg"
                scale: 1.5
                onClicked:  function(){
                    drawerId.open()
                }
            }
            Label{
                id : titleLablId
                text: "Drawerr App"
                font.pointSize: 20
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

        }
    }
    Drawer{
        id:drawerId
        width: Math.min(rootId.width , rootId.height) * (2/3)
        height:rootId.height
        interactive: true
        ColumnLayout{
            spacing: 0
            width: parent.width
            Button{
                width: parent.width
                height: 50
                text: "Itrem1"
                font.pointSize: 20
                background: Rectangle{
                    color: "beige"
                }
                Layout.fillWidth: true
                onClicked: function(){
                    console.log("Clicked on Item1")
                    contentRectId.color="blue"
                    drawerId.close()
                }
            }
            Button{
                width: parent.width
                height: 50
                text: "Itrem2"
                font.pointSize: 20
                background: Rectangle{
                    color: "beige"
                }
                Layout.fillWidth: true
                onClicked: function(){
                    console.log("Clicked on Item2")
                    contentRectId.color="yellow"
                    drawerId.close()
                }
            }
            Button{
                width: parent.width
                height: 50
                text: "Itrem3"
                font.pointSize: 20
                background: Rectangle{
                    color: "beige"
                }
                Layout.fillWidth: true
                onClicked: function(){
                    console.log("Clicked on Item3")
                    contentRectId.color="green"
                    drawerId.close()
                }
            }
        }

    }

    Rectangle{
        id: contentRectId
        color: "red"
        anchors.fill: parent
    }
    footer: Rectangle{
        color: "gray"
        width: parent.width
        height: 100
    }
}
