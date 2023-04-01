//
//  MainWindowView.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

struct MainWindowView: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    let tabs: [(String, String): View] = [
        ("Dock", "dock.rectangle"),
        ("Launchpad", "square.grid.3x3"),
        ("Windows", "macwindow"),
        ("Screenshot", "camera.viewfinder"),
        ("Finder", "folder"),
        ("Quick Look", "eye"),
        ("Desktop", "menubar.dock.rectangle"),
        ("Help Viewer", "questionmark.circle"),
        ("Keyboard", "keyboard"),
        ("Crash Reporter", "exclamationmark.triangle")
    ]
    
    var body: some View {
        EmptyView()
    }
}

struct MainWindowView_Previews: PreviewProvider {
    static var previews: some View {
        MainWindowView()
    }
}
