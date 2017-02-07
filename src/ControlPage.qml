import QtQuick 2.4
import Material 0.3
import Material.ListItems 0.1
import Material.Extras 0.1
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0 as Qtc
import MrPlotter 0.1
import "mr-plotter-layouts" as MrPlotterLayouts
import BOSSWAVE 1.0

Item {
    id : main
    property var dsource
    GridLayout {
      columnSpacing: 10
      rowSpacing: 10
      columns: 4
      anchors.fill: parent
      anchors.margins: 10
      id: grid
      View {
        id:topgraph
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.columnSpan: 4
        Text {
          text: "put the power consumption plot here"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"building ventilation"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"building heat"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"building cooling"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"EV charging"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Desk fan"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Desk heat"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Desk light"
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Demand response"
        }
      }
    }
}
