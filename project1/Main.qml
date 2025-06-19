import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property color _areaColor: "#708090"
    property color _normalColor: "#008000"

    Rectangle{
        id: buttonId
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom:  parent.bottom
        width: 100
        color : _normalColor
        Column{

            MyHoverButton{
                _text:"Cat"
                onClickedHandler: {
                    imageId.source="qrc:/image/cat.jpg"
                }

            }
            MyHoverButton{
                _text:"Dog"
                onClickedHandler: {
                    imageId.source="qrc:/image/dog.jpg"
                }

            }
            MyHoverButton{
                _text:"Fish"
                onClickedHandler: {
                    imageId.source="qrc:/image/fish.jpg"
                }
            }

        }

    }
    Rectangle{
        id:showId
        anchors.left: buttonId.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: _areaColor
        Image {
            id: imageId
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: ""
        }

    }



}
