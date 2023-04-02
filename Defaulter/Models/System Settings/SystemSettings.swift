//
//  SystemSettings.swift
//  Defaulter
//
//  Created by Kaleb on 3/31/23.
//

import SwiftUI

final class SystemSettings: ObservableObject {
    
    private enum Store: String {
        case dock = "com.apple.dock"
        case screenshot = "com.apple.screencapture"
        case finder = "com.apple.finder"
        case helpViewer = "com.apple.helpviewer"
        case crashReporter = "com.apple.CrashReporter"
        case notificationCenter = "com.apple.notificationcenterui"
        case global = "NSGlobalDomain"
        
        var store: UserDefaults? {
            UserDefaults(suiteName: self.rawValue)
        }
    }

    // MARK: - Dock
    
    @AppStorage("autohide-time-modifier", store: Store.dock.store)
    var dockAutohideSpeed: Double?
    
    @AppStorage("autohide-delay", store: Store.dock.store)
    var dockAutohideDelay: Double?
    
    @AppStorage("mineffect", store: Store.dock.store)
    var minimizeEffect: String?
    enum MinimizeEffect: String, CaseIterable {
        case genie
        case scale
        case suck
    }
    
    @AppStorage("static-only", store: Store.dock.store)
    var runningAppsOnly: Bool?
    
    @AppStorage("enable-spring-load-actions-on-all-items", store: Store.dock.store)
    var springLoadingInDock: Bool?
    
    @AppStorage("showhidden", store: Store.dock.store)
    var showHiddenAppsInDock: Bool?
    
    func addSpacer(addToStacksArea: Bool = false) {
        let dockLayoutType = addToStacksArea ? "persistent-others" : "persistent-apps"
        var dockLayout = Store.dock.store?.array(forKey: dockLayoutType)
        dockLayout?.append([
            "tile-data": [
                "file-label": ""
            ],
            "tile-type": "spacer-tile"
        ] as [String: Any])
        Store.dock.store?.set(dockLayout, forKey: dockLayoutType)
    }
    
    @AppStorage("mouse-over-hilite-stack", store: Store.dock.store)
    var highlightStackItemsOnHover: Bool?
    
    @AppStorage("single-app", store: Store.dock.store)
    var singleAppMode: Bool?
    
    // MARK: - Launchpad
    
    @AppStorage("springboard-rows", store: Store.dock.store)
    var launchpadRows: Int?
    
    @AppStorage("springboard-columns", store: Store.dock.store)
    var launchpadColumns: Int?
    
    @AppStorage("springboard-show-duration", store: Store.dock.store)
    var launchpadShowAnimationDuration: Double?
    
    @AppStorage("springboard-hide-duration", store: Store.dock.store)
    var launchpadHideAnimationDuration: Double?
    
    @AppStorage("ResetLaunchPad", store: Store.dock.store)
    var resetLaunchpadOnNextDockLaunch: Bool?
    
    // MARK: - Windows
    
//    @AppStorage("NSWindowResizeTime", store: Store.global.store)
//    var windowResizeAnimationLength: Double?
//    
//    @AppStorage("NSAutomaticWindowAnimationsEnabled", store: Store.global.store)
//    var newWindowAnimation: Bool?
    
    // MARK: - Screenshot
    
    @AppStorage("disable-shadow", store: Store.screenshot.store)
    var disableScreenshotShadow: Bool?
    
    @AppStorage("include-date", store: Store.screenshot.store)
    var includeDateInScreenshotFilename: Bool?
    
    @AppStorage("show-thumbnail", store: Store.screenshot.store)
    var showScreenshotThumbnail: Bool?
    
    @AppStorage("type", store: Store.screenshot.store)
    var saveScreenshotAsType: String?
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
    
    // MARK: - Finder
    
    @AppStorage("QuitMenuItem", store: Store.finder.store)
    var enableFinderQuit: Bool?
    
    @AppStorage("AppleShowAllFiles", store: Store.finder.store)
    var showHiddenFiles: Bool?
    
//    @AppStorage("NSDocumentSaveNewDocumentsToCloud", store: Store.global.store)
//    var saveToCloud: Bool?
    
    @AppStorage("DisableAllAnimations", store: Store.finder.store)
    var disableFinderAnimations: Bool?
    
    @AppStorage("WarnOnEmptyTrash", store: Store.finder.store)
    var warnWhenEmptyingTrash: Bool?
    
    @AppStorage("ProhibitEject", store: Store.finder.store)
    var disableEject: Bool?
    
    @AppStorage("ProhibitFinderPreferences", store: Store.finder.store)
    var disableSettings: Bool?
    
    @AppStorage("ProhibitGoToFolder", store: Store.finder.store)
    var disableGoToFolder: Bool?
    
    @AppStorage("ProhibitEmptyTrash", store: Store.finder.store)
    var disableEmptyTrash: Bool?
    
    @AppStorage("ProhibitConnectTo", store: Store.finder.store)
    var disableConnectToServer: Bool?
    
    @AppStorage("FinderSounds", store: Store.dock.store)
    var finderSounds: Bool?
    
    @AppStorage("ArchiveTimestamp", store: Store.dock.store)
    var archiveTimestamp: Bool?
    
    // MARK: - Quick Look
    
//    @AppStorage("QLPanelAnimationDuration", store: Store.global.store)
//    var quickLookAnimationDuration: Double?
    
    // MARK: - Desktop
    
    @AppStorage("CreateDesktop", store: Store.finder.store)
    var showDesktopIcons: Bool?
    
    @AppStorage("desktop-picture-show-debug-text", store: Store.dock.store)
    var showWallpaperPath: Bool?
    
    // MARK: - Help Viewer
    
    @AppStorage("DevMode", store: Store.helpViewer.store)
    var disableHelpViewerAlwaysOnTop: Bool?
    
    // MARK: - Keyboard
    
//    @AppStorage("ApplePressAndHoldEnabled", store: Store.global.store)
//    var disableAccentsOnKeyHold: Bool?
//
//    @AppStorage("NSTextInsertionPointBlinkPeriodOn", store: Store.global.store)
//    var insertionPointBlinkRateOn: Double?
//
//    @AppStorage("NSTextInsertionPointBlinkPeriodOff", store: Store.global.store)
//    var insertionPointBlinkRateOff: Double?
    
    // MARK: - Crash Reporter
    
    @AppStorage("UseUNC", store: Store.crashReporter.store)
    var sendNotificationOnAppCrash: Bool?
}

// TODO: Implement an AppStorage alternative using this function.
func defaultsWrite(_ value: any Codable, to key: String, in store: String) {
    let (type, value): (String?, String?) = {
        switch value {
            case is Bool:
                return ("bool", "\(value)")
            case is String:
                return ("string", "'\(value)'")
            case is Int:
                return ("int", "\(value)")
            case is Double:
                return ("float", "\(value)")
            default:
                return (nil, nil)
        }
    }()
    
    guard let type, let value else {
        return
    }
    
    let shellPath = URL(filePath: "/usr/bin/defaults")
    let arguments = [
        "write",
        store,
        key,
        "-\(type)",
        value
    ]
    
    let task = try? Process.run(shellPath, arguments: arguments)
#if DEBUG
    print(task!.arguments)
#endif
    task?.waitUntilExit()
    }
