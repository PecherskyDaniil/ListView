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
