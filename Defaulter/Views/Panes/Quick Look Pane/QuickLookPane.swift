//
//  QuickLookPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct QuickLookPane: Pane {
    var name = "Quick Look"
    var systemImage = "eye"
    var category: PaneCategory = .system
    
    var body: some View {
        Text("Under Construction")
            .font(.headline.weight(.medium))
    }
}

extension QuickLookPane {
    struct Defaults {
        //    @AppStorage("QLPanelAnimationDuration", store: stores["global"]!)
        //    static var quickLookAnimationDuration: Double?
    }
}

struct QuickLookPane_Previews: PreviewProvider {
    static var previews: some View {
        QuickLookPane()
    }
}
