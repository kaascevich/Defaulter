//
//  ScreenshotPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct ScreenshotPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
        .background(VisualEffectView(material: .popover).ignoresSafeArea())
    }
}

struct ScreenshotPane_Previews: PreviewProvider {
    static var previews: some View {
        ScreenshotPane()
    }
}
