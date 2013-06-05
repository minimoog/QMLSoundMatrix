import QtQuick 2.0
import QtMultimedia 5.0

Item {
    property bool soundEnable: false
    property SoundEffect effect

    opacity: soundEnable

    function play() {
        if (soundEnable && !effect.playing) {
            effect.play();
        }
    }

    Rectangle {
        id: rect
        color: "red"
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

//        onClicked: {
//            soundEnable = !soundEnable
//        }

        onEntered: soundEnable = !soundEnable
    }
}
