import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ColumnLayout{
        anchors.fill: parent
        ProgressBar {
            id:myprogress
            Layout.fillWidth: true
            from:myspinbox.from
            to:myspinbox.to
            value:myspinbox.value
        }
    }
    SpinBox{
            id:myspinbox
            from:0
            to:100
            stepSize: 1
            value:50
            anchors{
                left: parent.left
                right: parent.right
            }
        }
}
