import QtQuick
import QtQuick.Controls
ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    menuBar: MenuBar{
        Menu{
            id:fileMenu
            title: "File"
            Action{
                id:newActionId
                text:"New"
                icon.source: "images/newFileIcon.png"
                onTriggered: function(){
                    console.log("newAction is Triggered")
                }
            }
            Action{
                id:openActionId
                text:"Open"
                icon.source: "images/openIcon.png"
                onTriggered: function(){
                    console.log("openActionId is Triggered")
                }
            }
            Action{
                id:saveActionId
                text:"Save"
                icon.source: "images/saveIcon.png"
                onTriggered: function(){
                    console.log("saveActionId is Triggered")
                }
            }
            Action{
                id:saveAsActionId
                text:"Save As"
                icon.source: "images/saveAsIcon.png"
                onTriggered: function(){
                    console.log("saveAsActionId is Triggered")
                }
            }
            MenuSeparator{

            }
            Action{
                id:quitAsActionId
                text:"Quit"
                icon.source: "images/quitIcon.png"
                onTriggered: function(){
                    Qt.quit()
                }
            }
        }
        Menu{
            title: "Edit"
            Action{
                id: cutActionId
                text: "Cut"
                icon.source: "images/cutIcon.png"
            }
            Action {
                text: "Copy"
                icon.source: "images/copyIcon.png"
            }
            Action {
                text: "Paste"
                icon.source: "images/pasteIcon.png"
            }
            MenuSeparator {
            }
            Action {
                text: "Undo"
                icon.source: "images/undoIcon.png"
            }
            Action {
                text: "Redo"
                icon.source: "images/redoIcon.png"
            }
        }

        Menu{
            id: helpMenuId
            title: "Help"
            Action{
                id: aboutActionId
                text: "Help"
                icon.source: "images/info.png"
            }
        }
    }
    header: ToolBar{
        Row{
            anchors.fill: parent
            ToolButton{
                action: newActionId
            }
            ToolButton{
                action: saveActionId
            }
            ToolButton{
                action: saveAsActionId
            }
            ToolButton{
                action: quitAsActionId
            }
        }
    }

    footer: TabBar{
       id: tabBarId
       width: parent.width
       TabButton{
           text: "Page1"
           onClicked: function(){
               stackId.pop()
               stackId.push("Page1.qml")
               console.log("Numbers of stack items: " + stackId.depth)
           }
       }
       TabButton{
           text: "Page2"
           onClicked: function(){
               stackId.pop()
               stackId.push("Page2.qml")
               console.log("Numbers of stack items: " + stackId.depth)
           }
       }
       TabButton{
           text: "Page3"
           onClicked: function(){
               stackId.pop()
               stackId.push("Page3.qml")
               console.log("Numbers of stack items: " + stackId.depth)
           }
       }
    }
    StackView{
        id: stackId
        anchors.fill: parent
        initialItem: Page1{

        }
    }
}
