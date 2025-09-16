import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TimeAndDateTime")
    CppClass{
        id: cppClassId
        //Receiving data from C++
        onSendDateTime:  (datetimeparam) =>
        {
            console.log("Received datetime :"+ datetimeparam);
            //Extract info
            console.log("Year :" + datetimeparam.getFullYear())
            console.log("...",datetimeparam.toGMTString())
        }

        // onSendTime: (time)=>{
        //     console.log("Received time :"+ time);
        // }
    }


    Button{
        id: buttonId
        text: "Click me"

       onClicked: function(){
           //Receive data from C++
           cppClassId.cppSlot()

           //Send data to C++
           var date = new Date()
           cppClassId.timeSlot(date);
           cppClassId.dateTimeSlot(date)

       }
    }

}
