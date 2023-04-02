//
//  TextEditPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct TextEditPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("When opening TextEdit, create a new Untitled file instead of showing the open panel", isOn: systemSettings.$showOpenPanelInsteadOfUntitledFile)
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct TextEditPane_Previews: PreviewProvider {
    static var previews: some View {
        TextEditPane()
    }
}
