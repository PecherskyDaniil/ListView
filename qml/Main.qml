import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
App {
    Window {
    width: 360
    height: 640
    visible: true

    title: qsTr("Task_for_ListView_Model")
    property int defMargin: 8

    Page{
    id:page
    anchors.fill:parent
    Rectangle{
        anchors.fill:parent
        color: Qt.rgba(0,0.7,0,0.5)
    ListModel{
        id:my_model
    }
    }
    Component{
    id:my_delegate
    MyDelegate{
    name:model.name
    time:model.time
    /*
    surname:model.surname
    phoneNumber: model.phone
    */
    width:parent.width
    height:40
    }
    }
    ListView{
    spacing: 10
    id:my_list
    anchors.fill:parent
    model:my_model
    delegate:my_delegate
    }
    footer: PageFooter {
    onNewMessage: {
    //Append new message
    var newMsg = {};
    newMsg.name = msg;
    newMsg.time = Qt.formatTime(new Date(), "hh:mm");
    my_model.append(newMsg);
    }
    }
    }

    }
}
