import QtQuick 2.9

Item {
    //id: valueSource
    property real kph: 0
    property bool isAccelerated: false
    property bool isWinkedRight: false
    property bool isWinkedLeft: false
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
        if(event.key === Qt.Key_A){
            isAccelerated = true;
            accelarate();
        }
        if(event.key === Qt.Key_Right){
            isWinkedRight=true;
        }
        if(event.key === Qt.Key_Left){
            isWinkedLeft=true;
        }
    }

// Released key_A -> false
    Keys.onReleased: {
        if(event.key === Qt.Key_A){
            isAccelerated = false;
            accelarate();
        }
        if(event.key === Qt.Key_Right){
            isWinkedRight=false
        }
        if(event.key === Qt.Key_Left){
            isWinkedLeft=false
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
