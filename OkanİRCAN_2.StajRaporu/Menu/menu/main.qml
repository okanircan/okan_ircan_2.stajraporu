import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Button {
        id : openmenu
        text : 'Enter Menu'
        onClicked: {
           menu.open();
        }
    }
    Label {
        id :label
        anchors.centerIn: parent
        text: 'Select one of the options!!'
        font.pointSize: 25
    }
    Menu {
        id:menu
        y : openmenu.height
        MenuItem{
            text:'Option1'
            onClicked: {
               label.text = 'Selected Option 1'
            }
        }
        MenuItem{
            text:'Option2'
            onClicked: {
               label.text= 'Selected Option 2'
            }
        }
        MenuItem{
            text:'Option3'
            onClicked: {
               label.text= 'Selected Option 3'
            }
        }
    }
}
