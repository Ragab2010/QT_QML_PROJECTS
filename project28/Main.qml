import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Decoration and Sections")

    ListModel {
        id: listModelId
        ListElement {
            names: "Seth Moris"
            company: "GOOGLE"
        }
        ListElement {
            names: "Miriam Katv"
            company: "GOOGLE"
        }

        ListElement {
            names: "Eugene Fitzgerald"
            company: "GOOGLE"
        }
        ListElement {
            names: "Kantkl Vikney"
            company: "GOOGLE"
        }
        ListElement {
            names: "Mary Beige"
            company: "TESLA"
        }
        ListElement {
            names: "Bamba Pikt"
            company: "TESLA"
        }
        ListElement {
            names: "Jeffery Mor"
            company: "SIEMENS"
        }
        ListElement {
            names: "Pick Mo"
            company: "SIEMENS"
        }
    }
    ListView{
        id : listViewId
        anchors.fill: parent
        model: listModelId
        delegate: delegateId
        section{
            property: "company"
            criteria:ViewSection.FullString
            //criteria:ViewSection.FirstCharacter
            delegate:delegateSectionId
        }

    }
    Component{
        id: delegateId
        Rectangle{
            id :rectDelegateId
            color:"green"
            width: parent.width
            height: 50
            border.color: "black"
            radius: width/2
            Text {
                id: textId
                anchors.centerIn: parent
                font.pixelSize: 30
                text: names
            }
            MouseArea{
                hoverEnabled:true
                anchors.fill: parent
                onEntered: {
                    rectDelegateId.color="darkseagreen"
                }
                onExited:  {
                    rectDelegateId.color="green"
                }
            }
        }
    }
    Component{
        id: delegateSectionId
        Rectangle{
            id :rectDelegateSectionId
            color:"red"
            width: parent.width
            height: 50
            border.color: "black"
            radius: width/2
            Text {
                id: sectionTextId
                anchors.centerIn: parent
                font.pixelSize: 30
                text: section //section to divide the names based on company name
            }
            MouseArea{
                hoverEnabled:true
                anchors.fill: parent
                onEntered: {
                    rectDelegateSectionId.color="chartreuse"
                }
                onExited:  {
                    rectDelegateSectionId.color="red"
                }
            }
        }
    }

}
