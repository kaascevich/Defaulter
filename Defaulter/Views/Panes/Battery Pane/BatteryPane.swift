//
//  BatteryPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct BatteryPane: Pane {
    var name = "Battery"
    var systemImage = "battery.50"
    var category: PaneCategory = .system
    
    var body: some View {
        Toggle("Disable charging sound", isOn: Defaults.$disableChargingSound)
    }
}

extension BatteryPane {
    struct Defaults {
        @AppStorage("ChimeOnNoHardware", store: stores["powerChime"]!)
        static var disableChargingSound: Bool = false
    }
}

struct BatteryPane_Previews: PreviewProvider {
    static var previews: some View {
        BatteryPane()
    }
}
