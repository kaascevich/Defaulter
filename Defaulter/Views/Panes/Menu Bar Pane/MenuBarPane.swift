//
//  MenuBarPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct MenuBarPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    @State private var isShowingDateTimeHelp = false
        
    var body: some View {
        Form {
            Section("Menu Extras") {
                TextField("Menu bar clock format:", text: systemSettings.$dateFormat)
                    .monospaced()
                Button("Date/Time Format Tips...") {
                    isShowingDateTimeHelp.toggle()
                }
                .buttonStyle(.link)
                .sheet(isPresented: $isShowingDateTimeHelp) {
                    DateTimeHelpSheet(isShown: $isShowingDateTimeHelp)
                }
            }
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct MenuBarPane_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarPane()
    }
}
