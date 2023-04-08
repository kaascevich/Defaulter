//
//  Pane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

// MARK: - Pane

protocol Pane: View {
    typealias Content = View
    associatedtype Defaults
    
    var name: String { get }
    var systemImage: String { get }
    var category: PaneCategory { get }
}

extension Pane {
    var paneView: some View {
        PaneView {
            body
        }
    }
}

// MARK: - PaneView

struct PaneView<Content: View>: View {
    var content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        Form {
            content
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

// MARK: - PaneCategory

enum PaneCategory: String, CaseIterable {
    case system
    case apps
}

// MARK: - Globals

let panes: [any Pane] = [
    DockPane(),
    LaunchpadPane(),
    WindowsPane(),
    ScreenshotPane(),
    FinderPane(),
    QuickLookPane(),
    DesktopPane(),
    KeyboardPane(),
    BatteryPane(),
    PrintingPane(),
    SoftwareUpdatePane(),
    CrashReporterPane(),
    TextEditPane(),
    MailPane()
]

let categories = Dictionary(grouping: panes, by: \.category)
