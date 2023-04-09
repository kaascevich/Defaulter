//
//  WindowsPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct WindowsPane: Pane {
    var name = "Windows"
    var systemImage = "macwindow"
    var category: PaneCategory = .system
    
    var body: some View {
        Toggle("Show one app at a time", isOn: Defaults.$singleAppMode)
    }
}

extension WindowsPane {
    struct Defaults {
        //    @AppStorage("NSWindowResizeTime", store: stores["global"]!)
        //    static var windowResizeAnimationLength: Double?
        //
        //    @AppStorage("NSAutomaticWindowAnimationsEnabled", store: stores["global"]!)
        //    static var newWindowAnimation: Bool = true
        
        @AppStorage("single-app", store: stores["dock"]!)
        static var singleAppMode: Bool = false
    }
}

struct WindowsPane_Previews: PreviewProvider {
    static var previews: some View {
        WindowsPane()
    }
}
