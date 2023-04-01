//
//  MainWindowView.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

struct MainWindowView: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    @State private var currentPane: Pane = .mainPanes[0]
    
    var body: some View {
        NavigationSplitView {
            List(Pane.mainPanes, id: \.self, selection: $currentPane) { pane in
                Label(pane.name, systemImage: pane.systemImage)
                    .tag(pane)
                    .fontDesign(.rounded)
            }
            .background(VisualEffectView(material: .popover).ignoresSafeArea())
        } detail: {
            DockPane()
        }
        .toolbar {
            Text(currentPane.name)
                .font(.system(.title2, design: .rounded, weight: .semibold))
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
