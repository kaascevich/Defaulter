//
//  SoftwareUpdatePane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct SoftwareUpdatePane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            StepperField(value: systemSettings.$updateCheckFrequency, in: 1...365, label: "Update check frequency (in days):")
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct SoftwareUpdatePane_Previews: PreviewProvider {
    static var previews: some View {
        SoftwareUpdatePane()
            .environmentObject(SystemSettings())
    }
}
