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
            Text("Under Construction")
                .font(.headline.weight(.medium))
        }
        .fontDesign(.rounded)
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
        .background(VisualEffectView(material: .popover).ignoresSafeArea())
    }
}

struct WindowsPane_Previews: PreviewProvider {
    static var previews: some View {
        WindowsPane()
    }
}
