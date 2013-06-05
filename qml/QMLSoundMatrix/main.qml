import QtQuick 2.0
import QtMultimedia 5.0

Rectangle {
    id: rect

    width: 360
    height: 360
    focus: true

    SoundEffect { id: s440; source: '../../sounds/440Hz.wav'; volume: 0.5 }
    SoundEffect { id: s466; source: '../../sounds/466Hz.wav'; volume: 0.5 }
    SoundEffect { id: s494; source: '../../sounds/494Hz.wav'; volume: 0.5 }
    SoundEffect { id: s523; source: '../../sounds/523Hz.wav'; volume: 0.5 }
    SoundEffect { id: s554; source: '../../sounds/554Hz.wav'; volume: 0.5 }
    SoundEffect { id: s587; source: '../../sounds/587Hz.wav'; volume: 0.5 }
    SoundEffect { id: s622; source: '../../sounds/622Hz.wav'; volume: 0.5 }
    SoundEffect { id: s659; source: '../../sounds/659Hz.wav'; volume: 0.5 }
    SoundEffect { id: s698; source: '../../sounds/698Hz.wav'; volume: 0.5 }
    SoundEffect { id: s784; source: '../../sounds/784Hz.wav'; volume: 0.5 }
    SoundEffect { id: s830; source: '../../sounds/830Hz.wav'; volume: 0.5 }
    SoundEffect { id: s880; source: '../../sounds/880Hz.wav'; volume: 0.5 }

    Row {
        Repeater {
            id: soundRow
            model: 12

            SoundColumn {
                width: 20
                height: rect.height
                effects: [s440, s466, s494, s523, s554, s587, s622, s659, s698, s784, s830, s880]
            }
        }
    }

    Timer {
        property int next : 0

        interval: 3000
        running: true
        repeat: true

        onTriggered: {
            soundRow.itemAt(next).play()

            next++

            if (next == soundRow.count)
                next = 0

            console.log(next)
        }
    }
}
