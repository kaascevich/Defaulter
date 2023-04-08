//
//  DockPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct DockPane: Pane {
    var name = "Dock"
    var systemImage = "dock.rectangle"
    var category: PaneCategory = .system
    
    var body: some View {
        Picker("Minimize effect", selection: Defaults.$minimizeEffect) {
            ForEach(Defaults.MinimizeEffect.allCases, id: \.self) { effect in
                Text(effect.rawValue.capitalized)
                    .tag(effect.rawValue)
            }
        }
        .pickerStyle(.segmented)
        AddSpacerButton()
        Section("Autohide") {
            StepperField(value: Defaults.$dockAutohideSpeed, in: 0...10, step: 0.1, label: "Animation duration for showing/hiding Dock (in seconds):")
            StepperField(value: Defaults.$dockAutohideDelay, in: 0...10, step: 0.1, label: "Delay before showing Dock (in seconds):")
        }
    }
}

extension DockPane {
    struct Defaults {
        @AppStorage("autohide-time-modifier", store: stores["dock"]!)
        static var dockAutohideSpeed: Double = 0.5
        
        @AppStorage("autohide-delay", store: stores["dock"]!)
        static var dockAutohideDelay: Double = 0.5
        
        @AppStorage("mineffect", store: stores["dock"]!)
        static var minimizeEffect: String = "genie"
        enum MinimizeEffect: String, CaseIterable {
            case genie
            case scale
            case suck
        }
        
        @AppStorage("static-only", store: stores["dock"]!)
        static var runningAppsOnly: Bool = false
        
        @AppStorage("enable-spring-load-actions-on-all-items", store: stores["dock"]!)
        static var springLoadingInDock: Bool = true
        
        @AppStorage("showhidden", store: stores["dock"]!)
        static var showHiddenAppsInDock: Bool = false
        
        static func addSpacer(addToStacksArea: Bool = false, isSmall: Bool = false) {
            let dockLayoutType = addToStacksArea ? "persistent-others" : "persistent-apps"
            var dockLayout = stores["dock"]!?.array(forKey: dockLayoutType)
            dockLayout?.append([
                "tile-data": [
                    "file-label": ""
                ],
                "tile-type": "\(isSmall ? "small-" : "")spacer-tile"
            ] as [String: Any])
            stores["dock"]!?.set(dockLayout, forKey: dockLayoutType)
        }
        
        @AppStorage("mouse-over-hilite-stack", store: stores["dock"]!)
        static var highlightStackItemsOnHover: Bool = false
        
        @AppStorage("no-bouncing", store: stores["dock"]!)
        static var disableBounceForAttention: Bool = false
        
        @AppStorage("size-immutable", store: stores["dock"]!)
        static var preventDockResize: Bool = false
        
        @AppStorage("scroll-to-open", store: stores["dock"]!)
        static var dockScrollGestures: Bool = false
    }
}

struct DockPane_Previews: PreviewProvider {
    static var previews: some View {
        DockPane()
    }
}
