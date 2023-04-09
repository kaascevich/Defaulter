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
        case crashReporter = "com.apple.CrashReporter"
        case notificationCenter = "com.apple.notificationcenterui"
        case clock = "com.apple.menuextra.clock"
        case desktopServices = "com.apple.desktopservices"
        case powerChime = "com.apple.PowerChime"
        case printing = "com.apple.PrintingPrefs"
        case softwareUpdate = "com.apple.SoftwareUpdate"
        case textEdit = "com.apple.TextEdit"
        case mail = "com.apple.mail"
        case global = "NSGlobalDomain"
        
        var store: UserDefaults? {
            UserDefaults(suiteName: self.rawValue)
        }
    }

    // MARK: - Dock
    
    @AppStorage("autohide-time-modifier", store: Store.dock.store)
    var dockAutohideSpeed: Double = 0.5
    
    @AppStorage("autohide-delay", store: Store.dock.store)
    var dockAutohideDelay: Double = 0.5
    
    @AppStorage("mineffect", store: Store.dock.store)
    var minimizeEffect: String = "genie"
    enum MinimizeEffect: String, CaseIterable {
        case genie
        case scale
        case suck
    }
    
    @AppStorage("static-only", store: Store.dock.store)
    var runningAppsOnly: Bool = false
    
    @AppStorage("enable-spring-load-actions-on-all-items", store: Store.dock.store)
    var springLoadingInDock: Bool = true
    
    @AppStorage("showhidden", store: Store.dock.store)
    var showHiddenAppsInDock: Bool = false
    
    func addSpacer(addToStacksArea: Bool = false, isSmall: Bool = false) {
        let dockLayoutType = addToStacksArea ? "persistent-others" : "persistent-apps"
        var dockLayout = Store.dock.store?.array(forKey: dockLayoutType)
        dockLayout?.append([
            "tile-data": [
                "file-label": ""
            ],
            "tile-type": "\(isSmall ? "small-" : "")spacer-tile"
        ] as [String: Any])
        Store.dock.store?.set(dockLayout, forKey: dockLayoutType)
    }
    
    @AppStorage("mouse-over-hilite-stack", store: Store.dock.store)
    var highlightStackItemsOnHover: Bool = false
    
    @AppStorage("no-bouncing", store: Store.dock.store)
    var disableBounceForAttention: Bool = false
    
    @AppStorage("size-immutable", store: Store.dock.store)
    var preventDockResize: Bool = false
    
    @AppStorage("scroll-to-open", store: Store.dock.store)
    var dockScrollGestures: Bool = false
    
    // MARK: - Launchpad
    
    @AppStorage("springboard-rows", store: Store.dock.store)
    var launchpadRows: Int = 7
    
    @AppStorage("springboard-columns", store: Store.dock.store)
    var launchpadColumns: Int = 5
    
    @AppStorage("springboard-show-duration", store: Store.dock.store)
    var launchpadShowAnimationDuration: Double = 1
    
    @AppStorage("springboard-hide-duration", store: Store.dock.store)
    var launchpadHideAnimationDuration: Double = 1
    
    @AppStorage("ResetLaunchPad", store: Store.dock.store)
    var resetLaunchpadOnNextDockLaunch: Bool = false
    
    // MARK: - Windows
    
//    @AppStorage("NSWindowResizeTime", store: Store.global.store)
//    var windowResizeAnimationLength: Double?
//    
//    @AppStorage("NSAutomaticWindowAnimationsEnabled", store: Store.global.store)
//    var newWindowAnimation: Bool = true
    
    @AppStorage("single-app", store: Store.dock.store)
    var singleAppMode: Bool = false
    
    // MARK: - Screenshot
    
    @AppStorage("disable-shadow", store: Store.screenshot.store)
    var disableScreenshotShadow: Bool = false
    
    @AppStorage("include-date", store: Store.screenshot.store)
    var includeDateInScreenshotFilename: Bool = true
    
    @AppStorage("show-thumbnail", store: Store.screenshot.store)
    var showScreenshotThumbnail: Bool = true
    
    @AppStorage("type", store: Store.screenshot.store)
    var saveScreenshotAsType: String = "png"
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
    
    @AppStorage("name", store: Store.screenshot.store)
    var defaultScreenshotName: String = "Screenshot"
    
    // MARK: - Finder
    
    @AppStorage("QuitMenuItem", store: Store.finder.store)
    var enableFinderQuit: Bool = false
    
    @AppStorage("AppleShowAllFiles", store: Store.finder.store)
    var showHiddenFiles: Bool = false
    
//    @AppStorage("NSDocumentSaveNewDocumentsToCloud", store: Store.global.store)
//    var saveToCloud: Bool = true
    
    @AppStorage("DisableAllAnimations", store: Store.finder.store)
    var disableFinderAnimations: Bool = false
    
    @AppStorage("WarnOnEmptyTrash", store: Store.finder.store)
    var warnWhenEmptyingTrash: Bool = true
    
    @AppStorage("ProhibitEject", store: Store.finder.store)
    var disableEject: Bool = false
    
    @AppStorage("ProhibitFinderPreferences", store: Store.finder.store)
    var disableFinderSettings: Bool = false
    
    @AppStorage("ProhibitGoToFolder", store: Store.finder.store)
    var disableGoToFolder: Bool = false
    
    @AppStorage("ProhibitEmptyTrash", store: Store.finder.store)
    var disableEmptyTrash: Bool = false
    
    @AppStorage("ProhibitConnectTo", store: Store.finder.store)
    var disableConnectToServer: Bool = false
    
    @AppStorage("FinderSounds", store: Store.finder.store)
    var finderSounds: Bool = false
    
    @AppStorage("ArchiveTimestamp", store: Store.finder.store)
    var archiveTimestamp: Bool = false
    
    @AppStorage("_FXShowPosixPathInTitle", store: Store.finder.store)
    var showFullPathInFinderTitleBar: Bool = false
    
    @AppStorage("DSDontWriteNetworkStores", store: Store.finder.store)
    var disableDSStoreOnNetworkVolumes: Bool = false
    
    @AppStorage("DSDontWriteUSBStores", store: Store.finder.store)
    var disableDSStoreOnUSBVolumes: Bool = false
    
    // MARK: - Quick Look
    
//    @AppStorage("QLPanelAnimationDuration", store: Store.global.store)
//    var quickLookAnimationDuration: Double?
    
    // MARK: - Desktop
    
    @AppStorage("CreateDesktop", store: Store.finder.store)
    var showDesktopIcons: Bool = true
    
    @AppStorage("desktop-picture-show-debug-text", store: Store.dock.store)
    var showWallpaperPath: Bool = false
    
    // MARK: - Keyboard
    
//    @AppStorage("ApplePressAndHoldEnabled", store: Store.global.store)
//    var disableAccentsOnKeyHold: Bool = true
//
//    @AppStorage("NSTextInsertionPointBlinkPeriodOn", store: Store.global.store)
//    var insertionPointBlinkRateOn: Double = 0.5
//
//    @AppStorage("NSTextInsertionPointBlinkPeriodOff", store: Store.global.store)
//    var insertionPointBlinkRateOff: Double = 0.5
//
//    @AppStorage("NSUseAnimatedFocusRing", store: Store.global.store)
//    var animatedFocusRing: Bool = true
    
    // MARK: - Battery
    
    @AppStorage("ChimeOnNoHardware", store: Store.powerChime.store)
    var disableChargingSound: Bool = false
    
    // MARK: - Printing
    
    @AppStorage("Quit When Finished", store: Store.printing.store)
    var quitPrinterAppWhenPrintingFinishes: Bool = true
    
    // MARK: - SoftwareUpdate
    
    @AppStorage("ScheduleFrequency", store: Store.softwareUpdate.store)
    var updateCheckFrequency: Int = 7
    
    // MARK: - Crash Reporter
    
    @AppStorage("UseUNC", store: Store.crashReporter.store)
    var sendNotificationOnAppCrash: Bool = false
    
    // MARK: - TextEdit
    
    @AppStorage("NSShowAppCentricOpenPanelInsteadOfUntitledFile", store: Store.textEdit.store)
    var showOpenPanelInsteadOfUntitledFile: Bool = true
    
    // MARK: - Mail
    
    @AppStorage("DisableSendAnimations", store: Store.mail.store)
    var disableSendAnimations: Bool = false
    @AppStorage("DisableReplyAnimations", store: Store.mail.store)
    var disableReplyAnimations: Bool = false
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
    task?.waitUntilExit()
}
