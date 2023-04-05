//
//  QuickLookPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct QuickLookPane: View {
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

struct QuickLookPane_Previews: PreviewProvider {
    static var previews: some View {
        QuickLookPane()
            .environmentObject(SystemSettings())
    }
}
