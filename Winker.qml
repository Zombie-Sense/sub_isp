import QtQuick 2.0
import QtGraphicalEffects 1.0

Item{
    Image{
          id:leftwinker
          source:"qrc:/images/wink.png"
          width:100
          height: 100
          x:50
          y:50
          ColorOverlay{
              anchors.fill: leftwinker
              color:valueSource.isWinkedLeft ? 'yellow' : '#000000'
              source:leftwinker
          }
    }

    Image{
        id:rightwinker
        source:"qrc:/images/wink.png"
        width:100
        height: 100
        x:500
        y:50
        mirror: true
        ColorOverlay{
            anchors.fill: rightwinker
            color:valueSource.isWinkedRight ? 'yellow' : '#000000'
            source:rightwinker
        }
    }

}

