import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15

import "Account"
import "Login" as L
import "HeaderBar"

Window {
    id: root
    width: 1600
    height: 900
    visible: true
    title: qsTr("Hello World")
    color: "#F5F5F5"
    flags: Qt.FramelessWindowHint |
           Qt.WindowMinimizeButtonHint |
           Qt.Window

//    Loader {
//        id: mainLoader
//        anchors {
//            left: parent.left
//            right: parent.right
//            top: topbar.bottom
//            bottom: parent.bottom
//        }
//        source: "StackViewPage.qml"
//    }
    StackView {
        id: stackview
        anchors {
            left: parent.left
            right: parent.right
            top: topbar.bottom
            bottom: parent.bottom
        }
        initialItem: "StackViewPage.qml"
    }
    Popup {
        id: popup
        x: 100
        y:100
        width: 200
        height: 300
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Button{
            text: "close"
            onClicked: popup.close();
        }
    }

    TopBar {
        id: topbar

        onMinimizeClicked: root.showMinimized();
        onCloseClicked: root.close();
        onAccountClicked: {
            console.log("account clicked");
            //stackview.replace("qrc:/Account/AccountPage.qml");
            stackview.replace("qrc:/SPCToken/SPCTokenForm.qml");
        }
        onSPCTokenClicked: {
            console.log("spc token clicked");
            stackview.replace("qrc:/SPCToken/SPCPage.qml");
        }
    }
//    AccountCard {
//        id: accountCard
//        anchors {
//            horizontalCenter: parent.horizontalCenter
//            top: parent.top
//            topMargin: 100
//        }
//    }

//    ActiveOrdersCard{
//        anchors {
//            horizontalCenter: accountCard.horizontalCenter
//            top: accountCard.bottom
//            topMargin: 30
//        }
//    }

    L.LoginFormExtended {
        id: loginForm
        x: 557
        y:110
    }


//    Button{
//        text: "Open"
//        onClicked: loginForm.open()
//        onHoveredChanged: {
//            console.log(loginForm.acmeUrl)
//        }
//    }


//    Text {
//        id: namedeneme
//        text: qsTr("Welcome to ACME")
//        font.family: Constants.mulishNormal.name
//        font.pixelSize: Constants.h2FontSize
//        anchors.centerIn: parent
//    }

}
