import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("TabBar")
    footer:TabBar{
        id:bar
        TabButton{
            text: 'first'
        }
        TabButton{
            text: 'second'
        }
        TabButton{
            text: 'third'
        }
    }
    StackLayout {
        anchors.fill: parent
        currentIndex: bar.currentIndex
        Item {
            id: firstTab
            Rectangle {
                color: 'red'
                anchors.fill: parent

                Button{
                    id:exitButton
                    text: 'exit'
                    onClicked: {
                        Qt.quit();
                    }
                }
            }
        }
        Item {
            id: secondTab
            Rectangle{
                color: 'blue'
                anchors.fill:parent
            }
        }
        Item {
            id: thirdTab
            Rectangle{
                color: 'purple'
                anchors.fill: parent
            }
        }
    }
}
