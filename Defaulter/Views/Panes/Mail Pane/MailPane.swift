//
//  MailPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct MailPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("Disable send animations", isOn: systemSettings.$disableSendAnimations)
            Toggle("Disable reply animations", isOn: systemSettings.$disableReplyAnimations)
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct MailPane_Previews: PreviewProvider {
    static var previews: some View {
        MailPane()
            .environmentObject(SystemSettings())
    }
}
