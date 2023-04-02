//
//  Pane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct Pane: Hashable {
    var name: String
    var systemImage: String
    
    init(_ name: String, systemImage: String) {
        self.name = name
        self.systemImage = systemImage
    }
}

extension Pane {
    static var mainPanes: [Pane] = [dock, launchpad, windows, screenshot, finder, quickLook, desktop, keyboard, battery, printing, softwareUpdate, crashReporter, textEdit, mail]
    
    static let dock = Pane("Dock", systemImage: "dock.rectangle")
    static let launchpad = Pane("Launchpad", systemImage: "square.grid.3x3")
    static let windows = Pane("Windows", systemImage: "macwindow")
    static let screenshot = Pane("Screenshot", systemImage: "camera.viewfinder")
    static let finder = Pane("Finder", systemImage: "folder")
    static let quickLook = Pane("Quick Look", systemImage: "eye")
    static let desktop = Pane("Desktop", systemImage: "menubar.dock.rectangle")
    static let keyboard = Pane("Keyboard", systemImage: "keyboard")
    static let battery = Pane("Battery", systemImage: "battery.50")
    static let printing = Pane("Printing", systemImage: "printer")
    static let softwareUpdate = Pane("Software Update", systemImage: "gearshape.arrow.triangle.2.circlepath")
    static let crashReporter = Pane("Crash Reporter", systemImage: "exclamationmark.triangle")
    static let textEdit = Pane("TextEdit", systemImage: "text.word.spacing")
    static let mail = Pane("Mail", systemImage: "envelope")
}
