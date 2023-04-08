//
//  TextEditPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct TextEditPane: Pane {
    var name = "TextEdit"
    var systemImage = "text.word.spacing"
    var category: PaneCategory = .apps
    
    var body: some View {
        Toggle("When opening TextEdit, create a new Untitled file instead of showing the open panel", isOn: Defaults.$showOpenPanelInsteadOfUntitledFile)
    }
}

extension TextEditPane {
    struct Defaults {
        @AppStorage("NSShowAppCentricOpenPanelInsteadOfUntitledFile", store: stores["textEdit"]!)
        static var showOpenPanelInsteadOfUntitledFile: Bool = true
    }
}

struct TextEditPane_Previews: PreviewProvider {
    static var previews: some View {
        TextEditPane()
    }
}
