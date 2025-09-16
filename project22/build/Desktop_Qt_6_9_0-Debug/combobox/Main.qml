import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ColumnLayout{
        width: parent.width
        // height: parent.height
        spacing: 5
        anchors.margins: 10

        Label{
            text: "Non Editable ComboBox:"
            wrapMode: Label.Wrap
            Layout.fillWidth: true
        }
        ComboBox{
            Layout.fillWidth: true
            model: ["first", "second" , "third"]
            onActivated:{
                console.log("["+currentIndex+"]"+"is :"+currentText)
            }
        }
        Label{
            text: "Editable ComboBox:"
            wrapMode: Label.Wrap
            Layout.fillWidth: true
        }
        ComboBox{
            id:comboEditableId
            Layout.fillWidth: true
            editable: true
            model: ["hello", "people" , "nice"]
            onActivated:{
                console.log("editable-["+currentIndex+"]"+"is :"+currentText)
            }
            onCurrentTextChanged: {
                console.log("Current text:", currentText)
                //comboEditableId.model.append(editText)
            }
        }
        Label{
            text: "ListModel ComboBox:"
            wrapMode: Label.Wrap
            Layout.fillWidth: true
        }
        ComboBox{
            Layout.fillWidth: true
            textRole:"text"
            editable: true
            model: ListModel{
                id:listModelId
                ListElement{
                    text:"Ahmed"
                    location:"Cairo"
                }
                ListElement{
                    text:"Ramy"
                    location:"Alex"
                }
                ListElement{
                    text:"Ali"
                    location:"mansoura"
                }
            }

            onActivated:{
                console.log("ListModel-["+currentIndex+"]"+"is :"+currentText)
            }

            onCurrentTextChanged: {
                    // Check if the text is already in the model
                    let text = currentText;
                    let found = false;

                    // // Loop through the model to check if the text exists
                    // for (var i = 0; i < model.count; i++) {
                    //     if (model.get(i).name === text) {
                    //         found = true;
                    //         break;
                    //     }
                    // }

                    // If the text isn't found in the model, add it
                    if (!found && text.length > 0) {
                        model.append({ name: text  , location: "Gamasa"});
                        console.log("Added new entry:", text);
                    }
                }

                onCurrentIndexChanged: {
                    console.log("Selected:", currentText);
                }
        }
        Label{
            text: "ListModel another approach ComboBox:"
            wrapMode: Label.Wrap
            Layout.fillWidth: true
        }
        ListModel {
            id: languageModel
            ListElement { name: "English"; code: "en" }
            ListElement { name: "Spanish"; code: "es" }
        }

        ComboBox {
            model: languageModel
            textRole: "name"
            Layout.fillWidth: true
            onCurrentIndexChanged: {
                console.log("Selected language code:", languageModel.get(currentIndex).code)
            }
        }

    }


}
