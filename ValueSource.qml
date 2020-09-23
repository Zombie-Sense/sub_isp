import QtQuick 2.9

Item {
    id: valueSource
    property real kph: 0
    property bool isAccelerated: false
    focus: true

    Timer{
        id: timer
        interval: 100;
        running: true;
        repeat: true;
        onTriggered: accelarate();
    }


// Pressed key_A -> true
    Keys.onPressed: {
        isAccelerated = true;
        if(event.key === Qt.Key_A){
            accelarate();
        }
    }

// Released key_A -> false
    Keys.onReleased: {
        isAccelerated = false;
        if(event.key === Qt.Key_A){
            accelarate();
        }
    }

// isAccelated:true -> accel, isAccelerated:fales -> brake
    function accelarate(){
        if(isAccelerated){
            gauge1.value = gauge1.value + 20
        }else{
            gauge1.value = gauge1.value - 20
        }
    }
}
