import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        anchors.centerIn: parent  // This is the correct place for centerIn
        spacing: 10
        Text {
            id: timeId
            text: "click here"
            font.pixelSize: 30
        }
        Rectangle{
            width: 300 ; height:100
            color: "green"
            radius:height/2
            Text {
                id: textId
                text: "click here"
                font.pixelSize: 30
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    testing.captureTime()

                }
            }
        }
    }
    Connections{
        target: testing
        // onNotice: {
        //     timeId.text = data
        // }
         function onNotice(data) {
            timeId.text = data
        }
        /*
          //or
        onNotice:(data)=> {
            timeId.text = data
        }
        */
        /*
          //or
        function onNotice(data) {
            timeId.text = data
        }
        */
        /*
          //or
        onNotice: function(data) {
            timeId.text = data
        }
        */
    }
}
