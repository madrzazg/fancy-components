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
            onCurrentIndexChanged: loader.source = model.get(currentIndex).path

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
                    onClicked: listView.currentIndex = index
                }
            }
        }
    }



    ListModel {
        id: listModel

        ListElement {
            name: "Fancy Mobile Button"
            path: "qrc:/FancyMobileButton/components/FancyMobileButton/example.qml"
        }

        ListElement {
            name: "Fancy Login Panel"
            path: "qrc:/FancyLoginPanel/components/FancyLoginPanel/example.qml"
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
