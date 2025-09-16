import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Header Footer Highlight")
    ListView{
        id : listViewId
        anchors.fill: parent
        header: headerId
        footer: footerId
        highlight:Rectangle{
            id:rectHeaderId
            color:"chartreuse"
            width: parent.width
            height: 50
            border.color: "black"
            radius: width/2
            opacity: 0.3
            z:3
        }
        // model: listModelId
        model: ["January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"]
        // delegate: delegateId
        delegate:Rectangle{
            id :delegateId
            color:"green"
            width: parent.width
            height: 50
            border.color: "black"
            radius: width/2
            Text {
                id: textId
                anchors.centerIn: parent
                font.pixelSize: 30
                text: modelData
            }
            MouseArea{
                hoverEnabled:true
                anchors.fill: parent
                onEntered: {
                    delegateId.color="darkseagreen"
                }
                onExited:  {
                    delegateId.color="green"
                }
                onClicked: {
                    listViewId.currentIndex=index
                }

            }
        }
    }
    Component{
        id:headerId
        Rectangle{
            id:rectHeaderId
            color:"orange"
            width: parent.width
            height: 50
            border.color: "black"
            radius: width/2
            Text {
                id: textId
                anchors.centerIn: parent
                font.pixelSize: 30
                text: "Months"
            }
            MouseArea{
                hoverEnabled:true
                anchors.fill: parent
                onEntered: {
                    rectHeaderId.color="Yellow"
                }
                onExited:  {
                    rectHeaderId.color="orange"
                }
            }
        }
    }
    Component{
        id:footerId
        Rectangle{
            id:rectFooterId
            color:"darkblue"
            width: parent.width
            height: 50
            border.color: "black"
            radius: width/2

        }
    }
}
