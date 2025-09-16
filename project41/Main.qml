import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("StatesTransitions")
    Rectangle{
        id: containerRectId
        anchors.fill: parent

        //Sky
        Rectangle{
            id: skyId
            width: parent.width
            height: 200
            color: "blue"
        }
        //ground
        Rectangle{
            id: groundId
            anchors.top: skyId.bottom
            anchors.bottom: parent.bottom
            width: parent.width
            color: "lime"
        }
        Image {
            id: treeSummerId
            x: 50
            y: 100
            width: 200
            height: 300
            source: "qrc:/image/treesummersmall.png"
        }
        Image {
            id: treeSpringId
            x: 50
            y: 100
            width: 200
            height: 300
            source: "qrc:/image/treespringsmall.png"
        }
        Rectangle{
            id: sunId
            x: parent.width - width - 100
            y: 50
            width: 100
            height: 100
            color: "yellow"
            radius: 600
        }

        state: "summer"
        states: [
            //spring
            State {
                name: "spring"
                PropertyChanges {
                    target: skyId
                    color: "deepskyblue"
                }
                PropertyChanges {
                    target: groundId
                    color: "lime"
                }
                PropertyChanges {
                    target: treeSummerId
                    opacity: 0
                }
                PropertyChanges {
                    target: treeSpringId
                    opacity: 1
                }
                PropertyChanges {
                    target: sunId
                    color: "lightyellow"
                }
            },
            //summer
            State {
                name: "summer"
                PropertyChanges {
                    target: skyId
                    color: "lightblue"
                }
                PropertyChanges {
                    target: groundId
                    color: "darkkhaki"
                }
                PropertyChanges {
                    target: treeSummerId
                    opacity: 1
                }
                PropertyChanges {
                    target: treeSpringId
                    opacity: 0
                }
                PropertyChanges {
                    target: sunId
                    color: "yellow"
                }
            }
        ]
    transitions: [
        Transition{
            from: "summer"
            to:"spring"

            ColorAnimation {
                duration: 1000
            }
            NumberAnimation{
                property: "opacity"
                duration: 1000
            }
        },
        Transition{
            from: "spring"
            to: "summer"

            ColorAnimation {
                duration: 1000
            }
            NumberAnimation{
                property: "opacity"
                duration: 1000
            }
        }
    ]
    MouseArea{
        anchors.fill: parent
        onClicked: function(){
            containerRectId.state = (containerRectId.state === "spring" ? "summer" : "spring")
        }
    }


    }
}
