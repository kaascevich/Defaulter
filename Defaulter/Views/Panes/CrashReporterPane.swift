//
//  CrashReporterPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct CrashReporterPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("When an app crashes, send a notification to Notification Center", isOn: systemSettings.$sendNotificationOnAppCrash)
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct CrashReporterPane_Previews: PreviewProvider {
    static var previews: some View {
        CrashReporterPane()
    }
}
