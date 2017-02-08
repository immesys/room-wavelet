import QtQuick 2.4
import QtQuick.Controls 2.0
import BOSSWAVE 1.0

Item {
    property string uri;
    property string name;
    Button{
        text: name + " On"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter

        onClicked: {
            BW.publishText({
                URI: uri,
                AutoChain: true,
                Payload: String.fromCharCode(1),
                PONum: 16777472
            }, function (err) {
                if (err.length != 0) {
                    console.log("Erorr in publish: " + err);
                }
            })
        }
    }
    Button{
        text: name + " Off"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom

        onClicked: {
            BW.publishText({
                URI: uri,
                AutoChain: true,
                Payload: String.fromCharCode(0),
                PONum: 16777472
            }, function (err) {
                if (err.length != 0) {
                    console.log("Error in publish: " + err);
                }
            })
        }
    }
}
