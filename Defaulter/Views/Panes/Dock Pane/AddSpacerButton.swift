//
//  DockPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct AddSpacerButton: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Button("Add Spacer") {
            
        }
    }
}

struct AddSpacerButton_Previews: PreviewProvider {
    static var previews: some View {
        AddSpacerButton()
            .environmentObject(SystemSettings())
    }
}
