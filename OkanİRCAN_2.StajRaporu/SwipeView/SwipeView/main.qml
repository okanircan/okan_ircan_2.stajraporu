import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    SwipeView {
        id :view
        anchors.fill:parent
        currentIndex: 0
        Item {
            id:primerElement
            Rectangle{
                anchors.fill: parent
                color: 'red'
            }
        }
        Item {
            id: seconElement
            Rectangle {
                anchors.fill: parent
                color: 'blue'
            }
        }
        Item {
            id: thirdElement
            Rectangle{
                anchors.fill: parent
                color: 'black'
            }
            Button{
                anchors.centerIn:parent
                id:exitButton
                text: 'EXIT!!'
                onClicked: {
                    Qt.quit();
                }
            }
        }
    }
    PageIndicator {
        id: sayac
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
