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
                manualText:     qsTr("Pre-flight inspection complete?")
            }

            PreFlightCheckButton {
                name:           qsTr("Tx Powered")
                manualText:     qsTr("Turn on transmitter and verify battery > 60%?")
            }

            PreFlightCheckButton {
                name:           qsTr("Tx A/C Model")
                manualText:     qsTr("Verify A/C Model and Side No. are correct")
            }

            PreFlightCheckButton {
                name:           qsTr("Camera Powered")
                manualText:     qsTr("Power on camera & verify waiting on usb signal?")
            }

            PreFlightCheckButton {
                name:           qsTr("A/C Powered")
                manualText:     qsTr("Relocate A/C to launch point and connect battery?")
            }

            PreFlightCheckButton {
                name:           qsTr("GCS Connected")
                manualText:     qsTr("connect GCS to Aircraft?")
            }
        }

        PreFlightCheckGroup {
            name: qsTr("System Health Checks")

            PreFlightCheckButton {
                name:           qsTr("GCS Battery")
                manualText:     qsTr("Ensure battery level exceeds planned mission by 10 min")
            }

            PreFlightCheckButton {
                name:           qsTr("Autopilot Firmware")
                manualText:     qsTr("Ensure autopilot firmware matches version listed in logbook")
            }

            PreFlightCheckButton {
                name:           qsTr("Autopilot Parameters")
                manualText:     qsTr("Load aircraft specific parameters and write to autopilot")
            }

            PreFlightCheckButton {
                name:           qsTr("Fence Parameters")
                manualText:     qsTr("Ensure following fence parameters are correct\n FENCE_ACTION: RTL\n FENCE_ALT_MAX: A/R(Default 100)\n FENCE_ENABLED: Enabled\n FENCE_TYPE: Altitude and Polygon")
            }

            PreFlightBatteryCheck {
                failurePercent:                 60
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
                manualText:     qsTr("Verify GCS RSSI > 90%")
            }

            PreFlightRCCheck {
            }

            PreFlightSoundCheck {
            }
        }

        PreFlightCheckGroup {
            name: qsTr("Mission Checks")

            PreFlightCheckButton {
                name:           qsTr("Create Mission")
                manualText:     qsTr("UMC Load or generate mission")
            }

            PreFlightCheckButton {
                name:           qsTr("Verify Mission")
                manualText:     qsTr("UAC verify mission within restricted airspace")
            }

            PreFlightCheckButton {
                name:           qsTr("Upload Mission")
                manualText:     qsTr("UMC upload mission to aircraft")
            }

            PreFlightCheckButton {
                name:           qsTr("Create Fence")
                manualText:     qsTr("UMC load or generate fence")
            }

            PreFlightCheckButton {
                name:           qsTr("Verify Fence")
                manualText:     qsTr("UAC verify fence boundary is at least 100 meters inside of restricted airspace boundary")
            }

            PreFlightCheckButton {
                name:           qsTr("Upload Fence")
                manualText:     qsTr("UMC upload fence to aircraft")
            }
        }

        PreFlightCheckGroup {
            name: qsTr("Pre-Takeoff Checks")

            PreFlightCheckButton {
                name:           qsTr("Flight Mode")
                manualText:     qsTr("UAC set flight mode for launch")
            }

            PreFlightCheckButton {
                name:           qsTr("Safety Switch")
                manualText:     qsTr("UAC activate A/C by depressing safety switch until it turns solid red")
            }

            PreFlightCheckButton {
                name:           qsTr("Tower Clearance")
                manualText:     qsTr("UMC requested clearance from tower")
            }

            PreFlightCheckButton {
                name:           qsTr("Controls Check")
                manualText:     qsTr("Verify controls check complete (disregard for first flight)")
            }

            PreFlightCheckButton {
                name:           qsTr("Flight area")
                manualText:     qsTr("Verify launch area and path free of obstacles/people")
            }
        }
    }
}

