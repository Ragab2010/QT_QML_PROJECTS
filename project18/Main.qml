import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("RangeSlider")
     RangeSlider{
         anchors.centerIn: parent
         from:0
         to:100
         first.value: 3
         second.value: 90
         first.onValueChanged: {
             console.log("first.value:"+ first.value)
         }
         second.onValueChanged:   {
             console.log("second.value:"+ second.value)
         }

     }
}
