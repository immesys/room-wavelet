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
        OnOffActuator {
            uri: "ucberkeley/eop/showroom/arbiter/act/building_fan"
            name: "Building Ventilation"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"building heat"
        }
        OnOffActuator {
            uri: "ucberkeley/eop/showroom/arbiter/act/building_heat"
            name: "Building Heat"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"building cooling"
        }
        OnOffActuator {
            uri: "ucberkeley/eop/showroom/arbiter/act/building_cool"
            name: "Building Cooling"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"EV charging"
        }
        OnOffActuator {
            uri: ""
            name: "EV Charging"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Desk fan"
        }
        OnOffActuator {
            uri: "ucberkeley/eop/plugctl/s.powerup.v0/1/i.binact/slot/state"
            name: "Desk Fan"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Desk heat"
        }
        OnOffActuator {
            uri: "ucberkeley/eop/plugctl/s.powerup.v0/0/i.binact/slot/state"
            name: "Desk Heat"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Desk light"
        }
        OnOffActuator {
            uri: "ucberkeley/eop/plugctl/s.powerup.v0/2/i.binact/slot/state"
            name: "Desk Light"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        Text{
          text:"Demand response"
        }
        OnOffActuator {
            uri: "ucberkeley/eop/showroom/arbiter/act/demand_response"
            name: "Demand Response"
            anchors.fill: parent
        }
      }
    }
}
