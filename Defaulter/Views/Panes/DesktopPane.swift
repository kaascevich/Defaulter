//
//  DesktopPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct DesktopPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("Show desktop icons", isOn: systemSettings.$showDesktopIcons)
            Section("Wallpaper") {
                Toggle("Show file path to current wallpaper (warning: quite intrusive)", isOn: systemSettings.$showWallpaperPath)
            }
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct DesktopPane_Previews: PreviewProvider {
    static var previews: some View {
        DesktopPane()
    }
}
