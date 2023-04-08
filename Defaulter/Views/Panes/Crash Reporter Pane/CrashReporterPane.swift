//
//  CrashReporterPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct CrashReporterPane: Pane {
    var name = "Crash Reporter"
    var systemImage = "exclamationmark.triangle"
    var category: PaneCategory = .system
    
    var body: some View {
        Toggle("When an app crashes, send a notification to Notification Center", isOn: Defaults.$sendNotificationOnAppCrash)
    }
}

extension CrashReporterPane {
    struct Defaults {
        @AppStorage("UseUNC", store: stores["crashReporter"]!)
        static var sendNotificationOnAppCrash: Bool = false
    }
}

struct CrashReporterPane_Previews: PreviewProvider {
    static var previews: some View {
        CrashReporterPane()
    }
}
