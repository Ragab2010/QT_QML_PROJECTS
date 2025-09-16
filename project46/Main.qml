import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello Cpp backend ")

    Column{
        anchors {
            //top: parent.top   // Align to top of the window
            horizontalCenter: parent.horizontalCenter // Center horizontally
            verticalCenter: parent.verticalCenter
        }
        spacing: 10
        Row{
            id:id_nameId
            spacing: 10
            TextField{
                id:idId

            }
            TextField{
                id:nameId

            }

        }
        Button{
            text: "Backend"
            anchors.horizontalCenter: id_nameId.horizontalCenter  // Center button within the Row
            onClicked: {
                if (idId.text !== "" && nameId.text !== "") {
                    var response = myobj.concateString(idId.text, nameId.text)
                    outputId.text = response
                } else {
                    outputId.text = "Please write the ID and Name";
                    myobj.cpp_backSlot()
                }

            }
        }
        Label{
            id:outputId
            anchors.horizontalCenter: id_nameId.horizontalCenter  // Center button within the Row


        }

    }
}
