//
//  KeyboardPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct KeyboardPane: Pane {
    var name = "Keyboard"
    var systemImage = "keyboard"
    var category: PaneCategory = .system
    
    var body: some View {
        Text("Under Construction")
            .font(.headline.weight(.medium))
    }
}

extension KeyboardPane {
    struct Defaults {
        //    @AppStorage("ApplePressAndHoldEnabled", store: stores["global"]!)
        //    static var disableAccentsOnKeyHold: Bool = true
        //
        //    @AppStorage("NSTextInsertionPointBlinkPeriodOn", store: stores["global"]!)
        //    static var insertionPointBlinkRateOn: Double = 0.5
        //
        //    @AppStorage("NSTextInsertionPointBlinkPeriodOff", store: stores["global"]!)
        //    static var insertionPointBlinkRateOff: Double = 0.5
        //
        //    @AppStorage("NSUseAnimatedFocusRing", store: stores["global"]!)
        //    static var animatedFocusRing: Bool = true
    }
}

struct KeyboardPane_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardPane()
    }
}
