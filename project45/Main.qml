import QtQuick
import QtCore

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Save State of Application")
    Rectangle{
        id: containerRectId
        anchors.fill: parent

        //Sky
        Rectangle{
            id: skyId
            width: parent.width
            height: 200
            color: "blue"
            gradient: Gradient{
                GradientStop{
                    id: skyStartColorId
                    position: 0.0
                    color: "blue"
                }
                GradientStop{
                    id: skyEndColorId
                    position: 1.0
                    color: "#66CCFF"
                }
            }
        }
        //ground
        Rectangle{
            id: groundId
            anchors.top: skyId.bottom
            anchors.bottom: parent.bottom
            width: parent.width
            color: "lime"
            gradient: Gradient{
                GradientStop{
                    id: groundStartColorId
                    position: 0.0
                    color: "lime"
                }
                GradientStop{
                    id: groundEndColorId
                    position: 1.0
                    color: "#66CCFF"
                }
            }
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

        state: appSettingId.appState
        states: [
            //spring
            State {
                name: "spring"
                // PropertyChanges {
                //     target: skyId
                //     color: "deepskyblue"
                // }
                PropertyChanges {
                    target: skyStartColorId
                    color: "deepskyblue"
                }
                PropertyChanges {
                    target: skyEndColorId
                    color: "#AACCFF"
                }

                // PropertyChanges {
                //     target: groundId
                //     color: "lime"
                // }
                PropertyChanges {
                    target: groundStartColorId
                    color: "lime"
                }
                PropertyChanges {
                    target: groundEndColorId
                    color: "#66CCFF"
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
                // PropertyChanges {
                //     target: skyId
                //     color: "lightblue"
                // }
                PropertyChanges{
                    target: skyStartColorId
                    color: "lightblue"
                }
                PropertyChanges{
                    target: skyEndColorId
                    color: "#EECCFF"
                }
                // PropertyChanges {
                //     target: groundId
                //     color: "darkkhaki"
                // }
                PropertyChanges {
                    target: treeSummerId
                    opacity: 1
                }
                PropertyChanges {
                    target: treeSpringId
                    opacity: 0
                }
                PropertyChanges {
                    target: groundStartColorId
                    color: "lime"
                }
                PropertyChanges {
                    target: groundEndColorId
                    color: "darkkhaki"
                }
                PropertyChanges {
                    target: sunId
                    color: "yellow"
                }
            }
        ]
    // transitions: [
    //     Transition{
    //         from: "summer"
    //         to:"spring"

    //         ColorAnimation {
    //             duration: 1000
    //         }
    //         NumberAnimation{
    //             property: "opacity"
    //             duration: 1000
    //         }
    //     },
    //     Transition{
    //         from: "spring"
    //         to: "summer"


    //     }
    // ]
    transitions: Transition {
        from: "*"
        to: "*"
        ColorAnimation {
            duration: 1000
        }
        NumberAnimation{
            property: "opacity"
            duration: 1000
        }

    }
    MouseArea{
        anchors.fill: parent
        onClicked: function(){
            containerRectId.state = (containerRectId.state === "spring" ? "summer" : "spring")
        }
    }
    }
    Settings{
        id:appSettingId
        property string appState: "Summer"

    }
    Component.onDestruction: {
        appSettingId.appState=containerRectId.state
    }
}

