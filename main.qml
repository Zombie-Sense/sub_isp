import QtQuick 2.9
import QtQuick.Controls 1.4
import QtQuick.Extras 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Sample")
    color: gauge1.value < 60 ? "#001142" : "#8e3322"

    Telltale{
    }
    Winker{
    }

    ValueSource{
        id: valueSource
    }

    CircularGauge{
        id:gauge1
        visible: true
        width: parent.width*3/4
        height: parent.width*3/4
        anchors.horizontalCenter:parent.horizontalCenter
        property bool iscoloredNeedle:false
        maximumValue:150
        minimumValue: 0

        Behavior on value {
            SequentialAnimation {
                PropertyAnimation{
                    easing.type: Easing.Linear
                }
                NumberAnimation{
                    property: "value"
                    easing.type: Easing.Linear
                    to:0
                    duration: 1000
                }
            }
        }
        style:SpeedGaugeStyle{
        }

    }
}
