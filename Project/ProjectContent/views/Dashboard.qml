

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
// import "EditProject.qml" // Import the Edit Project page
import "../components"

Item {
    width: parent.width
    height: parent.height

    // Header bar - using the custom header component
    Header {
        width: parent.width
        height: 60
    }

    // Main content area
    Rectangle {
        width: parent.width
        height: parent.height - 60 // Subtract header height
        y: 60
        color: "#ffffff" // White background for the content area
        radius: 8

        // Loading indicator
        Rectangle {
            width: 50
            height: 50
            color: "#6200EE"
            radius: 25
            anchors.centerIn: parent
            // visible: projectController.projects.length === 0 // Show when no projects loaded

            Image {
                source: "qrc:/loading-spinner.gif" // Add a loading spinner image (this could be a gif or animation)
                anchors.centerIn: parent
            }
        }

        // List view for displaying projects
        ListView {
            width: parent.width
            height: parent.height
            model: ListModel {
                ListElement { name: "Project 1"; label: "Urgent"; createdBy: "Alice" }
                ListElement { name: "Project 2"; label: "Low Priority"; createdBy: "Bob" }
                ListElement { name: "Project 3"; label: "High Priority"; createdBy: "Charlie" }
            }
            clip: true

            // Delegate for rendering each project
            delegate: Item {
                width: parent.width
                height: 120

                Rectangle {
                    width: parent.width
                    height: 110
                    color: "#f5f5f5" // Light gray background for each item
                    radius: 10
                    border.color: "#e0e0e0" // Subtle border around each project
                    border.width: 1
                    anchors.top: parent.top

                    // GridLayout to create a table-like layout
                    GridLayout {
                        columns: 4 // 4 columns (name, label, createdBy, button)
                        anchors.fill: parent
                        // spacing: 10 // Space between cells

                        // Title (name) in the first column with fixed width
                        Text {
                            text: model.name
                            font.pixelSize: 20
                            font.bold: true
                            color: "#333333"
                            Layout.preferredWidth: 200 // Fixed width for the name column
                            Layout.alignment: Qt.AlignLeft // Align text to the left
                        }

                        // Label in the second column with fixed width
                        Text {
                            text: "Label: " + model.label
                            font.pixelSize: 14
                            color: "#757575"
                            Layout.preferredWidth: 150 // Fixed width for the label column
                            Layout.alignment: Qt.AlignLeft // Align text to the left
                        }

                        // CreatedBy in the third column with fixed width
                        Text {
                            text: "Created by: " + model.createdBy
                            font.pixelSize: 14
                            color: "#757575"
                            Layout.preferredWidth: 150 // Fixed width for the created by column
                            Layout.alignment: Qt.AlignLeft // Align text to the left
                        }

                        // Edit button in the fourth column with fixed width
                        Button {
                            text: "Edit"
                            onClicked: {
                                console.log("Edit project clicked: " + model.name)
                                // Navigate to the EditProject page and pass the project data
                                // stackView.push(Projectview)
                                stackView.replace(Qt.resolvedUrl("Projectview.qml"))
                            }
                            Layout.preferredWidth: 100 // Fixed width for the button column
                            Layout.alignment: Qt.AlignLeft // Align button to the left
                        }
                    }
                }
            }
        }
    }

    // Error message handling
    // Text {
    //     anchors.bottom: parent.bottom
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     text: projectController.errorMessage
    //     color: "red"
    //     font.pixelSize: 16
    //     visible: projectController.errorMessage !== "" // Show error only when message is not empty
    //     anchors.bottomMargin: 10
    // }
}

