//
//  DefaulterApp.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

@main
struct DefaulterApp: App {
    var body: some Scene {
        Window("Defaulter", id: "mainWindow") {
            MainWindowView()
                .fontDesign(.rounded)
                .frame(minWidth: 800, minHeight: 500)
         }
        .windowStyle(.hiddenTitleBar)
        .windowToolbarStyle(.unified)
        .windowResizability(.contentMinSize)
    }
}
