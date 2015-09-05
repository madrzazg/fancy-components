import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true




    Rectangle {
        id: container
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: parent.width * 0.4
        color: "#004953"

        ListView {
            id: listView
            anchors.fill: parent
            focus: true
            model: listModel
            boundsBehavior: Flickable.DragOverBounds

            delegate: Item {
                id: delegate
                width: listView.width
                height: 40

                Label {
                    id: componentNameLabel
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    text: name
                    color: "white"
                    font.pointSize: 12
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: loader.source = path
                }
            }
        }
    }



    ListModel {
        id: listModel

        ListElement {
            name: "none"
            path: "none"
        }
    }


    Loader {
        id: loader
        anchors.left: container.right
        anchors.right: parent.right
        height: parent.height
        asynchronous: true
    }
}
