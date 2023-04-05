//
//  WindowsPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct WindowsPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("Show one app at a time", isOn: systemSettings.$singleAppMode)
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct WindowsPane_Previews: PreviewProvider {
    static var previews: some View {
        WindowsPane()
            .environmentObject(SystemSettings())
    }
}
