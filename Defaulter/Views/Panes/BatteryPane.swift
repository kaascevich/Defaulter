//
//  BatteryPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct BatteryPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("Disable charging sound", isOn: systemSettings.$disableChargingSound)
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct BatteryPane_Previews: PreviewProvider {
    static var previews: some View {
        BatteryPane()
    }
}
