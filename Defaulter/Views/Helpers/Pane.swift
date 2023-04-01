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
    static var mainPanes: [Pane] = [
        Pane("Dock",
                 systemImage: "dock.rectangle"),
        Pane("Launchpad",
                 systemImage: "square.grid.3x3"),
        Pane("Windows",
                 systemImage: "macwindow"),
        Pane("Screenshot",
                 systemImage: "camera.viewfinder"),
        Pane("Finder",
                 systemImage: "folder"),
        Pane("Quick Look",
                 systemImage: "eye"),
        Pane("Desktop",
                 systemImage: "menubar.dock.rectangle"),
        Pane("Help Viewer",
                 systemImage: "questionmark.circle"),
        Pane("Keyboard",
                 systemImage: "keyboard"),
        Pane("Crash Reporter",
                 systemImage: "exclamationmark.triangle")
    ]
}
