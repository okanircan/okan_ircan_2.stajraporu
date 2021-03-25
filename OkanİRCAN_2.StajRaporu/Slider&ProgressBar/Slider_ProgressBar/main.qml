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
            id:myprogressbar
            Layout.fillWidth: true
            from:myslider.from
            to:myslider.to
            value:myslider.value
        }
        Slider{
            Layout.fillWidth: true
            id:myslider
            from:0
            to:100
            stepSize: 1
            value:50
        }
        Text{
            Layout.fillWidth: true
            text: myslider.value
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        Button{
            id:sliderbutton
            text: '30'
            onClicked: {
                myslider.value = 30;
            }
        }
    }
}

