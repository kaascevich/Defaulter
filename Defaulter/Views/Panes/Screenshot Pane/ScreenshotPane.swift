//
//  ScreenshotPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct ScreenshotPane: Pane {
    var name = "Screenshot"
    var systemImage = "camera.viewfinder"
    var category: PaneCategory = .apps
    
    var body: some View {
        Toggle(isOn: Defaults.$disableScreenshotShadow) {
            Text("**Disable** screenshot shadows")
        }
        Toggle("Show thumbnail", isOn: Defaults.$showScreenshotThumbnail)
        Toggle("Include date in filenames", isOn: Defaults.$includeDateInScreenshotFilename)
        TextField("Default screenshot filename:", text: Defaults.$defaultScreenshotName)
        Picker("Save screenshots as:", selection: Defaults.$saveScreenshotAsType) {
            ForEach(Defaults.ScreenshotFileType.allCases, id: \.self) { fileType in
                Text(fileType.rawValue.uppercased())
                    .tag(fileType.rawValue)
            }
        }
    }
}

extension ScreenshotPane {
    struct Defaults {
        @AppStorage("disable-shadow", store: stores["screenshot"]!)
        static var disableScreenshotShadow: Bool = false
        
        @AppStorage("include-date", store: stores["screenshot"]!)
        static var includeDateInScreenshotFilename: Bool = true
        
        @AppStorage("show-thumbnail", store: stores["screenshot"]!)
        static var showScreenshotThumbnail: Bool = true
        
        @AppStorage("type", store: stores["screenshot"]!)
        static var saveScreenshotAsType: String = "png"
        enum ScreenshotFileType: String, CaseIterable {
            case png
            case jpg
            case pdf
            case psd
            case gif
            case tga
            case tiff
            case bmp
        }
        
        @AppStorage("name", store: stores["screenshot"]!)
        static var defaultScreenshotName: String = "Screenshot"
        
    }
}

struct ScreenshotPane_Previews: PreviewProvider {
    static var previews: some View {
        ScreenshotPane()
    }
}
