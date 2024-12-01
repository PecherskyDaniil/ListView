import QtQuick
import Felgo

Item {

property string name: "?"
property string time: "?"
Rectangle{
    border.color:"darkgrey"
    radius:5
    anchors.right:parent.right
    width:300
    height:50
    gradient:Gradient{
    GradientStop{position:0;color:"lightgray"}
    GradientStop{position:1;color:"white"}
    }
    Row{
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        spacing:6
        Text{
            text:name
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
        }
        Text{
            text:time
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }
}
}
