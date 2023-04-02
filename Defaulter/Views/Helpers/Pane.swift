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
    static var mainPanes: [Pane] = [dock, launchpad, windows, screenshot, finder, quickLook, desktop, helpViewer, keyboard, crashReporter]
    
    static let dock = Pane("Dock", systemImage: "dock.rectangle")
    static let launchpad = Pane("Launchpad", systemImage: "square.grid.3x3")
    static let windows = Pane("Windows", systemImage: "macwindow")
    static let screenshot = Pane("Screenshot", systemImage: "camera.viewfinder")
    static let finder = Pane("Finder", systemImage: "folder")
    static let quickLook = Pane("Quick Look", systemImage: "eye")
    static let desktop = Pane("Desktop", systemImage: "menubar.dock.rectangle")
    static let helpViewer = Pane("Help Viewer", systemImage: "questionmark.circle")
    static let keyboard = Pane("Keyboard", systemImage: "keyboard")
    static let crashReporter = Pane("Crash Reporter", systemImage: "exclamationmark.triangle")
}
