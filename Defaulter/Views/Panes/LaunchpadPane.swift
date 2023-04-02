//
//  LaunchpadPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct LaunchpadPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Section("Grid Size") {
                StepperField(value: systemSettings.$launchpadRows, in: 1...15, step: 1, label: "Number of rows:")
                StepperField(value: systemSettings.$launchpadColumns, in: 1...15, step: 1, label: "Number of columns:")
            }
            Section("Animations") {
                StepperField(value: systemSettings.$launchpadShowAnimationDuration, in: 0...10, step: 0.1, label: "Animation duration for showing Launchpad:")
                StepperField(value: systemSettings.$launchpadHideAnimationDuration, in: 0...10, step: 0.1, label: "Animation duration for hiding Launchpad:")
            }
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct LaunchpadPane_Previews: PreviewProvider {
    static var previews: some View {
        LaunchpadPane()
    }
}
