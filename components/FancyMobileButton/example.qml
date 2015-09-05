/****************************************************************************
**
**  This is an example how to use FancyMobileButton component.
**  Example consists of 2 TextField and 2 FancyMobileButtons
**  TextFields are used as input for user's login and password, and buttons to both login user and register new account.
**
**  Author:   Mateusz Drzazga
**  Date:     31.08.2015
**  E-mail    matt.drzazga@gmail.com
**
**
****************************************************************************/

import QtQuick 2.4
import QtQuick.Controls 1.3

Rectangle {
    width: 640
    height: 480
    visible: true

    Rectangle {
        width: 250
        height: 250
        color: "#4c4c4c"
        anchors.centerIn: parent

        Column {
            id: column
            width: 200
            height: column.implicitHeight
            anchors.centerIn: parent
            spacing: 3

            TextField {
                width: parent.width
                placeholderText: "Login"
                font.pointSize: 10
            }

            TextField{
                width: parent.width
                placeholderText: "Password"
                echoMode: TextInput.Password
                font.pointSize: 10
            }

            FancyMobileButton {
                width: parent.width
                height: 25
                color: "#00bb11"
                text: "Sign in"
                onClicked: console.log("Sign in button clicked")
            }

            FancyMobileButton {
                width: parent.width
                height: 25
                color: "#00bb11"
                text: "Create Account"
                onClicked: console.log("Create Account button clicked")
            }
        }
    }
}
