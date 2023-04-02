//
//  MenuBarPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct MenuBarPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            
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
