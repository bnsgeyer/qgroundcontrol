/****************************************************************************
 *
 *   (c) 2009-2016 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick                      2.11
import QtQuick.Controls             2.4
import QtQml.Models                 2.1

import QGroundControl               1.0
import QGroundControl.ScreenTools   1.0
import QGroundControl.Controls      1.0
import QGroundControl.FlightDisplay 1.0
import QGroundControl.Vehicle       1.0

Item {
    property var model: listModel
    PreFlightCheckModel {
        id:     listModel
        PreFlightCheckGroup {
            name: qsTr("System Power up")

            PreFlightCheckButton {
                name:           qsTr("A/C Pre-Flight")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem1 ? "" :  qsTr("Pre-flight inspection complete?")) : qsTr("Pre-flight inspection complete?")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem1 ? false : true) : true
                telemetryTextFailure: qsTr("Pre-flight inspection complete?")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem1 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Tx Powered")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem2 ? "" :  qsTr("Turn on transmitter and verify battery > 60%?")) : qsTr("Turn on transmitter and verify battery > 60%?")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem2 ? false : true) : true
                telemetryTextFailure: qsTr("Turn on transmitter and verify battery > 60%?")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem2 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Tx A/C Model")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem3 ? "" :  qsTr("Verify A/C Model and Side No. are correct")) : qsTr("Verify A/C Model and Side No. are correct")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem3 ? false : true) : true
                telemetryTextFailure: qsTr("Verify A/C Model and Side No. are correct")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem3 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Camera Powered")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem4 ? "" :  qsTr("Power on camera & verify waiting on usb signal?")) : qsTr("Power on camera & verify waiting on usb signal?")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem4 ? false : true) : true
                telemetryTextFailure: qsTr("Power on camera & verify waiting on usb signal?")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem4 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("A/C Powered")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem5 ? "" :  qsTr("Relocate A/C to launch point and connect battery?")) : qsTr("Relocate A/C to launch point and connect battery?")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem5 ? false : true) : true
                telemetryTextFailure: qsTr("Relocate A/C to launch point and connect battery?")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem5 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("GCS Connected")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem6 ? "" :  qsTr("connect GCS to Aircraft?")) : qsTr("connect GCS to Aircraft?")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem6 ? false : true) : true
                telemetryTextFailure: qsTr("connect GCS to Aircraft?")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem6 = true
                    }
                }
            }
        }

        PreFlightCheckGroup {
            name: qsTr("System Health Checks")

            PreFlightCheckButton {
                name:           qsTr("GCS Battery")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem7 ? "" :  qsTr("Ensure battery level exceeds planned mission by 10 min")) : qsTr("Ensure battery level exceeds planned mission by 10 min")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem7 ? false : true) : true
                telemetryTextFailure: qsTr("Ensure battery level exceeds planned mission by 10 min")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem7 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Autopilot Firmware")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem8 ? "" :  qsTr("Ensure autopilot firmware matches version listed in logbook")) : qsTr("Ensure autopilot firmware matches version listed in logbook")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem8 ? false : true) : true
                telemetryTextFailure: qsTr("Ensure autopilot firmware matches version listed in logbook")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem8 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Autopilot Parameters")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem9 ? "" :  qsTr("Load aircraft specific parameters and write to autopilot")) : qsTr("Load aircraft specific parameters and write to autopilot")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem9 ? false : true) : true
                telemetryTextFailure: qsTr("Load aircraft specific parameters and write to autopilot")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem9 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Fence Parameters")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem10 ? "" :  qsTr("Ensure following fence parameters are correct\n FENCE_ACTION: RTL\n FENCE_ALT_MAX: A/R(Default 100)\n FENCE_ENABLED: Enabled\n FENCE_TYPE: Altitude and Polygon")) : qsTr("Ensure following fence parameters are correct\n FENCE_ACTION: RTL\n FENCE_ALT_MAX: A/R(Default 100)\n FENCE_ENABLED: Enabled\n FENCE_TYPE: Altitude and Polygon")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem10 ? false : true) : true
                telemetryTextFailure: qsTr("Ensure following fence parameters are correct\n FENCE_ACTION: RTL\n FENCE_ALT_MAX: A/R(Default 100)\n FENCE_ENABLED: Enabled\n FENCE_TYPE: Altitude and Polygon")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem10 = true
                    }
                }
            }

            PreFlightBatteryCheck {
//                failurePercent:                 60
                allowFailurePercentOverride:    false
            }

            PreFlightSensorsHealthCheck {
            }

            PreFlightGPSCheck {
                failureSatCount:        9
                allowOverrideSatCount:  false
            }

            PreFlightCheckButton {
                name:           qsTr("GCS Range Check")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem11 ? "" :  qsTr("Verify GCS RSSI > 90%")) : qsTr("Verify GCS RSSI > 90%")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem11 ? false : true) : true
                telemetryTextFailure: qsTr("Verify GCS RSSI > 90%")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem11 = true
                    }
                }
            }

  //          PreFlightRCCheck {
 //           }

//            PreFlightSoundCheck {
//            }
        }

        PreFlightCheckGroup {
            name: qsTr("Mission Checks")

            PreFlightCheckButton {
                name:           qsTr("Create Mission")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem12 ? "" :  qsTr("UMC Load or generate mission")) : qsTr("UMC Load or generate mission")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem12 ? false : true) : true
                telemetryTextFailure: qsTr("UMC Load or generate mission")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem12 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Verify Mission")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem13 ? "" :  qsTr("UAC verify mission within restricted airspace")) : qsTr("UAC verify mission within restricted airspace")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem13 ? false : true) : true
                telemetryTextFailure: qsTr("UAC verify mission within restricted airspace")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem13 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Upload Mission")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem14 ? "" :  qsTr("UMC Load or generate mission")) : qsTr("UMC Load or generate mission")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem14 ? false : true) : true
                telemetryTextFailure: qsTr("UMC Load or generate mission")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem14 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Create Fence")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem15 ? "" :  qsTr("UMC load or generate fence")) : qsTr("UMC load or generate fence")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem15 ? false : true) : true
                telemetryTextFailure: qsTr("UMC load or generate fence")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem15 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Verify Fence")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem16 ? "" :  qsTr("UAC verify fence boundary is at least 100 meters inside of restricted airspace boundary")) : qsTr("UAC verify fence boundary is at least 100 meters inside of restricted airspace boundary")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem16 ? false : true) : true
                telemetryTextFailure: qsTr("UAC verify fence boundary is at least 100 meters inside of restricted airspace boundary")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem16 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Upload Fence")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem17 ? "" :  qsTr("UMC upload fence to aircraft")) : qsTr("UMC upload fence to aircraft")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem17 ? false : true) : true
                telemetryTextFailure: qsTr("UMC upload fence to aircraft")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem17 = true
                    }
                }
            }
        }

        PreFlightCheckGroup {
            name: qsTr("Pre-Takeoff Checks")

            PreFlightCheckButton {
                name:           qsTr("Flight Mode")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem18 ? "" :  qsTr("UAC set flight mode for launch")) : qsTr("UAC set flight mode for launch")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem18 ? false : true) : true
                telemetryTextFailure: qsTr("UAC set flight mode for launch")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem18 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Safety Switch")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem19 ? "" :  qsTr("UAC activate A/C by depressing safety switch until it turns solid red")) : qsTr("UAC activate A/C by depressing safety switch until it turns solid red")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem19 ? false : true) : true
                telemetryTextFailure: qsTr("UAC activate A/C by depressing safety switch until it turns solid red")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem19 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Tower Clearance")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem20 ? "" :  qsTr("UMC requested clearance from tower")) : qsTr("UMC requested clearance from tower")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem20 ? false : true) : true
                telemetryTextFailure: qsTr("UMC requested clearance from tower")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem20 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Controls Check")
                manualText:      globals.activeVehicle ? (globals.activeVehicle.checkListItem21 ? "" :  qsTr("Verify controls check complete (disregard for first flight)")) : qsTr("Verify controls check complete (disregard for first flight)")
                telemetryFailure: globals.activeVehicle ? (globals.activeVehicle.checkListItem21 ? false : true) : true
                telemetryTextFailure: qsTr("Verify controls check complete (disregard for first flight)")
                allowTelemetryFailureOverride: true
                onClicked: {
                    if (manualText !== "" && _manualState !== _statePassed) {
                        // User is confirming a manual check
                        _manualState = _statePassed
                        globals.activeVehicle.checkListItem21 = true
                    }
                }
            }

            PreFlightCheckButton {
                name:           qsTr("Flight area")
                manualText:     qsTr("Verify launch area and path free of obstacles/people")
            }
        }
    }
}

