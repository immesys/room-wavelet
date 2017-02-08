import QtQuick 2.4
import QtQuick.Controls 2.0
import BOSSWAVE 1.0

Item {
    property string uri;
    property string name;

    function publishByte(b) {
        BW.publishText({
            URI: uri,
            AutoChain: true,
            Payload: String.fromCharCode(b),
            PONum: 16777472
        }, function (err) {
            if (err.length != 0) {
                console.log("Error in publish: " + err);
            }
        })
    }

    Button{
        text: name + " On"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter

        anchors.margins: 2

        onClicked: publishByte(1)
    }
    Button{
        text: name + " Off"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom

        anchors.margins: 2

        onClicked: publishByte(0)
    }
}
