import QtQuick 2.9
import QtQuick.Controls.Styles 1.4

CircularGaugeStyle {
    needle: Rectangle{
        width:10
        height:300
        color: gauge1.value>100 ? 'red': 'black'
    }
}
