//
//  DefaulterApp.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

@main
struct DefaulterApp: App {
    @StateObject private var systemSettings = SystemSettings()
    
    var body: some Scene {
        Window("Defaulter", id: "mainWindow") {
            ContentView()
                .environmentObject(systemSettings)
        }
    }
}
