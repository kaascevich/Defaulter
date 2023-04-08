//
//  LaunchpadPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct LaunchpadPane: Pane {
    var name = "Launchpad"
    var systemImage = "square.grid.3x3"
    var category: PaneCategory = .system
    
    var body: some View {
        Section("Grid Size") {
            StepperField(value: Defaults.$launchpadRows, in: 1...15, step: 1, label: "Number of rows:")
            StepperField(value: Defaults.$launchpadColumns, in: 1...15, step: 1, label: "Number of columns:")
        }
        Section("Animations") {
            StepperField(value: Defaults.$launchpadShowAnimationDuration, in: 0...10, step: 0.1, label: "Animation duration for showing Launchpad (in seconds):")
            StepperField(value: Defaults.$launchpadHideAnimationDuration, in: 0...10, step: 0.1, label: "Animation duration for hiding Launchpad (in seconds):")
        }
        Toggle("Reset Launchpad on next Dock relaunch", isOn: Defaults.$resetLaunchpadOnNextDockLaunch)
    }
}

extension LaunchpadPane {
    struct Defaults {
        @AppStorage("springboard-rows", store: stores["dock"]!)
        static var launchpadRows: Int = 7
        
        @AppStorage("springboard-columns", store: stores["dock"]!)
        static var launchpadColumns: Int = 5
        
        @AppStorage("springboard-show-duration", store: stores["dock"]!)
        static var launchpadShowAnimationDuration: Double = 1
        
        @AppStorage("springboard-hide-duration", store: stores["dock"]!)
        static var launchpadHideAnimationDuration: Double = 1
        
        @AppStorage("ResetLaunchPad", store: stores["dock"]!)
        static var resetLaunchpadOnNextDockLaunch: Bool = false
    }
}

struct LaunchpadPane_Previews: PreviewProvider {
    static var previews: some View {
        LaunchpadPane()
    }
}
