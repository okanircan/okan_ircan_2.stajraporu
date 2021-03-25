import QtQuick 2.9
import QtQuick.Controls 2.5

ApplicationWindow {
    id:mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row{
        id: buttonRow
        spacing: 5
        Button{
            id: button1
            width: 80
            height: 80
            text: 'buton1'
            onClicked: {
                mainWindow.title = "programtitle1"
                mainWindow.color = 'black'
                }
        }
        Button{
            id: button2
            width: 80
            height: 80
            text:'button2'
            onClicked: {
                mainWindow.title = "programtitle2";
                mainWindow.color = 'purple'
            }
        }

        Button{
            id: button3
            width: 80
            height: 80
            text:'exitButton'
            onClicked: {
                Qt.quit();
            }
        }
    }
}
