import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15

ProjectItemForm {
    // button.onClicked: console.log("Button Pressed")



        width: parent.width
        height: 70

        property var project

        Rectangle {
            width: parent.width
            height: 70
            color: "#ffffff"
            radius: 8
            border.color: "#eeeeee"
            border.width: 1
            // shadow: true
            anchors.centerIn: parent

            // Project title
            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                text: project.name
                font.pixelSize: 22
                font.bold: true
                color: "#333333"
                anchors.leftMargin: 15
                anchors.topMargin: 10
            }

            // Label text
            Text {
                anchors.left: parent.left
                anchors.top: projectTitle.bottom
                text: "Label: " + project.label
                font.pixelSize: 14
                color: "#757575"
                anchors.leftMargin: 15
                anchors.topMargin: 5
            }

            // Edit button
            Button {
                text: "Edit"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: 15
                onClicked: {
                    console.log("Editing project: " + project.name)
                    // Trigger editing of the project (e.g., open a dialog or another page)
                }
            }
        }
    }

// }
