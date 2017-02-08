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
        Layout.preferredHeight: parent.height / 2
        Layout.columnSpan: 4
        Stream {
            id: s1
            dataDensity: false
            selected: false
            alwaysConnect: false

            color: "blue"
            timeOffset: [0, 0]
            archiver: "ucberkeley/s.giles/_/i.archiver"
            uuid: "5e77668c-9938-340c-8d43-15d1b4b6e3e2"
        }
        MrPlotterLayouts.SmoothYAxis {
            id: a1
            dynamicAutoscale: true
            name: "Power Consumption [W]"
            domain: [-2, 2]
            streamList: [s1]
        }
        RowLayout {
            anchors.fill: parent
            View {
                Layout.fillWidth: true
                Layout.fillHeight: true
                MrPlotterLayouts.BasicPlot {
                    id: mrpbp
                    timeDomain: [1415643674978, 1415643674979, 469055.0, 469060.0]
                    timeZone: "America/Los_Angeles"
                    timeTickPromotion: true
                    axisList: [a1]
                    streamList: [s1]
                    scrollZoomable: true

                    Component.onCompleted: {
                        mrpbp.autozoom()
                    }

                    anchors.fill: parent
                }
            }
            ColumnLayout {
                Layout.preferredWidth: 100
                Button {
                    text: "See all Data"
                    onClicked: mrpbp.autozoom()
                }
            }
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
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
        OnOffActuator {
            uri: "ucberkeley/eop/showroom/arbiter/act/ev_charging"
            name: "EV Charging"
            anchors.fill: parent
        }
      }
      View {
        elevation: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
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
        OnOffActuator {
            uri: "ucberkeley/eop/showroom/arbiter/act/demand_response"
            name: "Demand Response"
            anchors.fill: parent
        }
      }
    }
}
