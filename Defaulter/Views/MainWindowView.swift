//
//  MainWindowView.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

struct MainWindowView: View {
    @State private var currentPane: any Pane = panes[0]
    
    var body: some View {
        NavigationSplitView {
            /*List(PaneCategory.allCases, id: \.rawValue, selection: $currentPane) { category in
                Section(category.rawValue.capitalized) {
                    ForEach(categories[category]!, id: \.name) { pane in
                        Label(pane.name, systemImage: pane.systemImage)
                            .tag(pane.name)
                    }
                }
            }
            .background(VisualEffectView(material: .hudWindow).ignoresSafeArea())*/
        } detail: {
            //currentPane.paneView
        }
        .toolbar {
            Text(currentPane.name)
                .font(.system(.title2, weight: .semibold))
        }
        .background(VisualEffectView(material: .hudWindow).ignoresSafeArea())
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
