import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "../"

Popup {
    id: root
    width: 485
    height: 526

    property string acmeUrl: acmeUrlTextInputId.text

    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

    Text {
        id: header
        width: 317
        height: 50
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 50
        }
        text: qsTr("Welcome to ACME Client!")
        font {
            family: Constants.mulishNormal.name
            pointSize: Constants.h2FontSize
        }

        color: Constants.text1Color

    }

    Text {
        text: qsTr("What is your role?")
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 115
        }
        font {
            family: Constants.mulishNormal.name
            pointSize: Constants.h5FontSize
        }

        color: Constants.text1Color
    }


    RowLayout {
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 163
        }
        spacing: 10
        RadioButton {
            text: "Service Provider"
        }
        RadioButton {
            text: "VoIP End User"
        }
    }

    Text {
        text: qsTr("ACME server URL")
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 204
        }
        font {
            family: Constants.mulishNormal.name
            pointSize: Constants.h5FontSize
        }

        color: Constants.text1Color
    }
        Rectangle {
            color: "transparent"
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 241
            }
            width: 385
            height: 51
            border.width: 1
            border.color: Constants.outlineColor
            radius: 8

            TextInput {
                id: acmeUrlTextInputId
                text: "dfsd"
                color: Constants.text1Color
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 20
            }
        }

        Text {
            text: qsTr("OCN")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 308
            }
            font {
                family: Constants.mulishNormal.name
                pointSize: Constants.h5FontSize
            }

            color: Constants.text1Color
        }
        Rectangle {
            color: "transparent"
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 345
            }
            width: 385
            height: 51
            border.width: 1
            border.color: Constants.outlineColor
            radius: 8

            TextInput {
                text: "314H"
                color: Constants.text1Color
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 20
            }
        }
//        RowLayout {
//            spacing: 59
//            Text {
//                text: qsTr("Country")
//                font {
//                    family: Constants.mulishNormal.name
//                    pointSize: Constants.h5FontSize
//                }

//                color: Constants.text1Color
//            }
//            Text {
//                text: qsTr("Optional")
//                font {
//                    family: Constants.mulishNormal.name
//                    pointSize: Constants.h5FontSize
//                }

//                color: Constants.inputHintColor
//            }
//            Text {
//                text: qsTr("Locality")
//                font.pointSize: 15
//                color: "#2F3C4E"
//            }
//            Text {
//                text: qsTr("Optional")
//                font.pointSize: 15
//                color: "#C4C4C4"
//            }
//        }

//        RowLayout {
//            spacing: 29
//            Rectangle {
//                color: "transparent"
//                width: 178
//                height: 51
//                border.width: 1
//                border.color: "#E6E6E6"
//                radius: 8

//                TextInput {
//                    text: "US"
//                    color: "#2F3C4E"
//                    font.pointSize: 15
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.left: parent.left
//                    anchors.leftMargin: 20
//                }
//            }

//            Rectangle {
//                color: "transparent"
//                width: 178
//                height: 51
//                border.width: 1
//                border.color: "#E6E6E6"
//                radius: 8

//                TextInput {
//                    text: "e.g City"
//                    color: "#C4C4C4"
//                    font.pointSize: 15
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.left: parent.left
//                    anchors.leftMargin: 20
//                }
//            }
//        }

//        RowLayout {
//            spacing: 59
//            Text {
//                text: qsTr("Organization")
//                font.pointSize: 15
//                color: "#2F3C4E"
//            }
//            Text {
//                text: qsTr("Optional")
//                font.pointSize: 15
//                color: "#C4C4C4"
//            }
//            Text {
//                text: qsTr("Unit")
//                font.pointSize: 15
//                color: "#2F3C4E"
//            }
//            Text {
//                text: qsTr("Optional")
//                font.pointSize: 15
//                color: "#C4C4C4"
//            }
//        }

//        RowLayout {
//            spacing: 29
//            Rectangle {
//                color: "transparent"
//                width: 178
//                height: 51
//                border.width: 1
//                border.color: "#E6E6E6"
//                radius: 8

//                TextInput {
//                    text: "Organization Name"
//                    color: "#C4C4C4"
//                    font.pointSize: 15
//                    anchors.centerIn: parent
//                }
//            }

//            Rectangle {
//                color: "transparent"
//                width: 178
//                height: 51
//                border.width: 1
//                border.color: "#E6E6E6"
//                radius: 8

//                TextInput {
//                    text: "Organization Unit"
//                    font.pointSize: 15
//                    color: "#C4C4C4"
//                    anchors.centerIn: parent
//                }
//            }
//        }

        Button {
            id: loginButton
            text: "Log In"
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 426
            }
            font {
                family: Constants.mulishNormal.name
                pointSize: Constants.h4
            }

            contentItem: Text {
                    text: loginButton.text
                    font: loginButton.font
                    opacity: enabled ? 1.0 : 0.3
                    color: loginButton.down ? "red" : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            background: Rectangle {
                implicitWidth: 184
                implicitHeight: 50
                radius: 8
                color: Constants.primaryColor
            }
        }
//        Rectangle{
//            width: 184
//            height: 50
//            radius: 8
//            color: Constants.primaryColor

//            Text{
//                anchors.centerIn: parent
//                text: "Log In"
//                font.family: Constants.mulishNormal.name
//                font.pointSize: Constants.h4
//                color: "#FFFFFF"
//            }
//        }
    }

