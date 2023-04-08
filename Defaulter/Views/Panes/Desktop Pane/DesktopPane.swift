//
//  DesktopPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct DesktopPane: Pane {
    var name = "Desktop"
    var systemImage = "menubar.dock.rectangle"
    var category: PaneCategory = .system
    
    var body: some View {
        Toggle("Show desktop icons", isOn: Defaults.$showDesktopIcons)
        Section("Wallpaper") {
            Toggle("Show file path to current wallpaper (warning: quite intrusive)", isOn: Defaults.$showWallpaperPath)
        }
    }
}

extension DesktopPane {
    struct Defaults {
        @AppStorage("CreateDesktop", store: stores["finder"]!)
        static var showDesktopIcons: Bool = true
        
        @AppStorage("desktop-picture-show-debug-text", store: stores["dock"]!)
        static var showWallpaperPath: Bool = false
    }
}

struct DesktopPane_Previews: PreviewProvider {
    static var previews: some View {
        DesktopPane()
    }
}
