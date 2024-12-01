
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    width: 640
    height: 480

    // Layout for centering all elements
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width * 0.8 // Adjust width to make it a bit smaller for better visual

        // Title
        Text {
            text: "Edit Project"
            font.pixelSize: 24
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter:  parent.Center

        }

        // Project Name
        TextField {
            id: nameField
            width: parent.width
            text: project.name
            placeholderText: "Enter project name"
            Layout.fillWidth: true
            padding: 10
        }

        // Project Label
        TextField {
            id: labelField
            width: parent.width
            text: project.label
            placeholderText: "Enter project label"
            Layout.fillWidth: true
            padding: 10
        }

        // Project Created By
        TextField {
            id: createdByField
            width: parent.width
            text: project.createdBy
            placeholderText: "Enter the name of creator"
            Layout.fillWidth: true
            padding: 10
        }

        // Row layout for buttons (Save and Cancel)
        // Row {
            // spacing: 20
            // anchors.horizontalCenter: parent.horizontalCenter

            // Save Button
            Button {
                text: "Save"
                onClicked: {
                    // Logic to save the updated project
                    project.name = nameField.text
                    project.label = labelField.text
                    project.createdBy = createdByField.text
                    console.log("Project updated: " + project.name)
                    stackView.pop() // Navigate back to the dashboard page
                }
                width: parent.width / 3
            }

            // Cancel Button
            Button {
                text: "Cancel"
                onClicked: {
                    stackView.pop() // Navigate back to the dashboard without saving
                }
                width: parent.width / 3
            }
        }
    // }
}
