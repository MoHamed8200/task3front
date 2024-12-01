import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15
HeaderForm {
    // button.onClicked: console.log("Button Pressed")


    // // Custom header component
    // Item {
        width: parent.width
        height: 60
        Rectangle {
            width: parent.width
            height: parent.height
            color: "#6200EE" // Material Purple color
            border.color: "#3700B3" // Darker border for the header

            Text {
                anchors.centerIn: parent
                text: "Project Management"
                color: "white"
                font.pixelSize: 24
                font.bold: true
            }
        }
    // }

}
