import QtQuick

Item {
    id: root
    property int _width:  100
    property int _height: 50
    property color _normalColor: "#008000"
    property color _hoverColor: "#32cd32"
    property color _clickedColor: "black"
    property string _text: "Botton"
    property color _textColor: "white"

    property alias title: textId
    property alias area: mouseAreaId

    signal pressedHandler
    signal releasedHandler
    signal clickedHandler

    height: root._height
    width: root._width

    Rectangle{

        color: root._normalColor
        anchors.fill: root
        Text {
            id: textId
            text: root._text
            anchors.centerIn: parent
            font.bold: true
            color:root._textColor
        }

        MouseArea{
            id:mouseAreaId
            anchors.fill: parent
            hoverEnabled: true  // Required to detect hover events

            onClicked: {
                clickedHandler()
            }
            onPressed:{
                parent.color = root._clickedColor
            }
            onReleased: {
                parent.color = root._hoverColor
            }

            onEntered: {
                //console.debug("Mouse entered")
                // root._color="#32cd32"
                parent.color = root._hoverColor
            }

            onExited: {
               // console.debug("Mouse exited")
                // root._color="#008000"
                parent.color = root._normalColor
            }
        }

    }

}
