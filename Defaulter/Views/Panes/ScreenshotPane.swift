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
            Toggle(isOn: systemSettings.$disableScreenshotShadow) {
                Text("**Disable** screenshot shadows")
            }
            Toggle("Show thumbnail", isOn: systemSettings.$showScreenshotThumbnail)
            Toggle("Include date in filenames", isOn: systemSettings.$includeDateInScreenshotFilename)
            Picker("Save screenshots as:", selection: systemSettings.$saveScreenshotAsType) {
                ForEach(SystemSettings.ScreenshotFileType.allCases, id: \.self) {
                    Text($0.rawValue.uppercased())
                        .tag($0.rawValue)
                }
            }
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct ScreenshotPane_Previews: PreviewProvider {
    static var previews: some View {
        ScreenshotPane()
    }
}
