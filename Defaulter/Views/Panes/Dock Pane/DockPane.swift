//
//  DockPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct DockPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Picker("Minimize effect", selection: systemSettings.$minimizeEffect) {
                ForEach(SystemSettings.MinimizeEffect.allCases, id: \.self) {
                    Text($0.rawValue.capitalized)
                        .tag($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            AddSpacerButton()
            Section("Autohide") {
                StepperField(value: systemSettings.$dockAutohideSpeed, in: 0...10, step: 0.1, label: "Animation duration for showing/hiding Dock (in seconds):")
                StepperField(value: systemSettings.$dockAutohideDelay, in: 0...10, step: 0.1, label: "Delay before showing Dock (in seconds):")
            }
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct DockPane_Previews: PreviewProvider {
    static var previews: some View {
        DockPane()
            .environmentObject(SystemSettings())
    }
}
