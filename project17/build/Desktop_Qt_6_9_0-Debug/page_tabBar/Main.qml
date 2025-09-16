import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("page & tabBar")
    Page{
        anchors.fill: parent

        header: Rectangle{
            width: parent.width
            height: 50
            color: "yellowgreen"
            Text {
                id: headerTextId
                anchors.centerIn:  parent
                text:qsTr("Some header text")
            }
        }
        //here is the content
        SwipeView{
            id:swipeViewId
            anchors.fill: parent
            currentIndex: barId.currentIndex
            Rectangle{
                width: 500
                height:500
                color: "red"
            }
            Rectangle{
                width: 500
                height:500
                color: "green"
            }
            Rectangle{
                width: 500
                height:500
                color: "black"
            }

        }

        footer: TabBar {
            id: barId
            currentIndex: swipeViewId.currentIndex
            width: parent.width
            TabButton {
                text: qsTr("Home")
            }
            TabButton {
                text: qsTr("Discover")
            }
            TabButton {
                text: qsTr("Activity")
            }
        }
    }
}
