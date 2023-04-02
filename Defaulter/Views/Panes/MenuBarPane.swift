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
    
    //private let dateTimeHelp = {
    //    let file = Bundle.main.path(forResource: "DateTimeHelp", ofType: "md")!
    //    let markdown = try! String(contentsOfFile: file)
    //    return try! AttributedString(markdown: markdown)
    //}()
    
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
                    Text("Test")
                        .padding()
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
