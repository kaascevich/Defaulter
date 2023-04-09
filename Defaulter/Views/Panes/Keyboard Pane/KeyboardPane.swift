//
//  KeyboardPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct KeyboardPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Text("Under Construction")
                .font(.headline.weight(.medium))
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct KeyboardPane_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardPane()
            .environmentObject(SystemSettings())
    }
}
