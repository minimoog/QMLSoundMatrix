import QtQuick 2.0
import QtMultimedia 5.0

Item {

    property list<SoundEffect> effects

    function play() {
        console.debug("column play")

        for (var i = 0; i < columnSound.count; ++i) {
            columnSound.itemAt(i).play();
        }
    }

    Column {
        Repeater {
            id: columnSound

            model: 12
            delegate: SoundArea { width: 20; height: 20 }

            onItemAdded: {
                item.effect = effects[index]
            }
        }
    }
}
