import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Notifier{
        id : notId
        target: recId
    }
    Receiver{
        id:recId
        anchors.right: parent.right
    }
    /*
    Component.onCompleted: {
        notId.notify.connect(recId.receiveInfo)
    }
    */
}
