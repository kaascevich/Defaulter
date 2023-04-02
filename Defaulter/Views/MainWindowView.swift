//
//  MainWindowView.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

struct MainWindowView: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    @State private var currentPane: Pane = .dock
    
    var body: some View {
        NavigationSplitView {
            List(Pane.mainPanes, id: \.self, selection: $currentPane) { pane in
                Label(pane.name, systemImage: pane.systemImage)
                    .tag(pane)
            }
            .background(VisualEffectView(material: .popover).ignoresSafeArea())
        } detail: {
            switch currentPane {
                case .dock:
                    DockPane()
                case .launchpad:
                    LaunchpadPane()
                case .windows:
                    WindowsPane()
                case .screenshot:
                    ScreenshotPane()
                case .finder:
                    FinderPane()
                case .quickLook:
                    QuickLookPane()
                case .desktop:
                    DesktopPane()
                case .helpViewer:
                    HelpViewerPane()
                case .keyboard:
                    KeyboardPane()
                case .crashReporter:
                    CrashReporterPane()
                default:
                    EmptyView()
            }
        }
        .toolbar {
            Text(currentPane.name)
                .font(.system(.title2, weight: .semibold))
        }
        .background(VisualEffectView(material: .sidebar).ignoresSafeArea())
    }
}

struct VisualEffectView: NSViewRepresentable {
    var material: NSVisualEffectView.Material
    
    func makeNSView(context: Context) -> some NSView {
        let view = NSVisualEffectView()
        view.material = material
        return view
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) { }
}

struct MainWindowView_Previews: PreviewProvider {
    static var previews: some View {
        MainWindowView()
    }
}
