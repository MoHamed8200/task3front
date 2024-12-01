


import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "components"
import "views"
ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    title: "Project Management"
    color: "#f0f0f0" // Light background color

    StackView {
           id: stackView
           anchors.fill: parent
           initialItem: Dashboard {
               width: parent.width
               height: parent.height
           }
       }

}




