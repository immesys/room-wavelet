import QtQuick 2.4
import Material 0.3
import Material.ListItems 0.1
import Material.Extras 0.1
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.1

WaveletWindow {

  id : mwindow
  theme {
      primaryColor: "#003262"
      accentColor: "#FDB515"
      tabHighlightColor: "#FF0000"//"#DCEDC8"
  }
  initialPage : TabbedPage {
    id : overview
    title : "SDB Room Control"
    Tab {
      title : "Control"
      ControlPage {
        anchors.fill: parent
      }
    }
    Tab {
      title : "Details"
      DetailsPage {
        anchors.fill: parent
      }
    }
  }
}
