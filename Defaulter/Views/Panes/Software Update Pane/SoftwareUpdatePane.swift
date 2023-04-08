//
//  SoftwareUpdatePane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct SoftwareUpdatePane: Pane {
    var name = "Software Update"
    var systemImage = "gearshape.arrow.triangle.2.circlepath"
    var category: PaneCategory = .system
    
    var body: some View {
        StepperField(value: Defaults.$updateCheckFrequency, in: 1...365, label: "Update check frequency (in days):")
    }
}

extension SoftwareUpdatePane {
    struct Defaults {
        @AppStorage("ScheduleFrequency", store: stores["softwareUpdate"]!)
        static var updateCheckFrequency: Int = 7
    }
}

struct SoftwareUpdatePane_Previews: PreviewProvider {
    static var previews: some View {
        SoftwareUpdatePane()
    }
}
