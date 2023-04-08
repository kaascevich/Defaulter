//
//  MailPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct MailPane: Pane {
    var name = "Mail"
    var systemImage = "envelope"
    var category: PaneCategory = .apps
    
    var body: some View {
        Toggle("Disable send animations", isOn: Defaults.$disableSendAnimations)
        Toggle("Disable reply animations", isOn: Defaults.$disableReplyAnimations)
    }
}

extension MailPane {
    struct Defaults {
        @AppStorage("DisableSendAnimations", store: stores["mail"]!)
        static var disableSendAnimations: Bool = false
        
        @AppStorage("DisableReplyAnimations", store: stores["mail"]!)
        static var disableReplyAnimations: Bool = false
    }
}

struct MailPane_Previews: PreviewProvider {
    static var previews: some View {
        MailPane()
    }
}
