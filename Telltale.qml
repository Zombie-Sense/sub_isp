import QtQuick 2.0
import QtQuick.Layouts 1.3

Column{
    Image {
          source: gauge1.value >30 ? "qrc:/images/abs.png" : "qrc:/images/brake.png"
          width:100
          height: 100
    }
}
