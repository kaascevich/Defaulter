//
//  Globals.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

let stores: [String: UserDefaults?] = [
    "dock":               "com.apple.dock",
    "screenshot":         "com.apple.screencapture",
    "finder":             "com.apple.finder",
    "crashReporter":      "com.apple.CrashReporter",
    "notificationCenter": "com.apple.notificationcenterui",
    "clock":              "com.apple.menuextra.clock",
    "desktopServices":    "com.apple.desktopservices",
    "powerChime":         "com.apple.PowerChime",
    "printing":           "com.apple.PrintingPrefs",
    "softwareUpdate":     "com.apple.SoftwareUpdate",
    "textEdit":           "com.apple.TextEdit",
    "mail":               "com.apple.mail",
    "global":             "NSGlobalDomain"
].mapValues { UserDefaults(suiteName: $0) }
