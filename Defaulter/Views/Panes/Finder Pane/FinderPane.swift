//
//  FinderPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct FinderPane: Pane {
    var name = "Finder"
    var systemImage = "folder"
    var category: PaneCategory = .apps
    
    var body: some View {
        Toggle("Show hidden files", isOn: Defaults.$showHiddenFiles)
        Toggle("Show full path in title bar", isOn: Defaults.$showFullPathInFinderTitleBar)
        Toggle("Disable animations", isOn: Defaults.$disableFinderAnimations)
        Toggle("Warn when emptying the Trash", isOn: Defaults.$warnWhenEmptyingTrash)
        Toggle("Play sounds", isOn: Defaults.$finderSounds)
        Toggle("Include timestamp in archive filenames", isOn: Defaults.$archiveTimestamp)
        Section("Menu Bar Commands") {
            Toggle("Enable Finder > Quit Finder", isOn: Defaults.$enableFinderQuit)
            Toggle("Disable File > Eject", isOn: Defaults.$disableEject)
            Toggle("Disable Finder > Settings...", isOn: Defaults.$disableFinderSettings)
            Toggle("Disable Finder > Empty Trash...", isOn: Defaults.$disableEmptyTrash)
            Toggle("Disable Go > Go to Folder...", isOn: Defaults.$disableGoToFolder)
            Toggle("Disable Go > Connect to Server...", isOn: Defaults.$disableConnectToServer)
        }
        Section(".DS_Store Files") {
            Toggle("Don't create .DS_Store files on network volumes", isOn: Defaults.$disableDSStoreOnNetworkVolumes)
            Toggle("Don't create .DS_Store files on USB volumes", isOn: Defaults.$disableDSStoreOnUSBVolumes)
        }
    }
}

extension FinderPane {
    struct Defaults {
        @AppStorage("QuitMenuItem", store: stores["finder"]!)
        static var enableFinderQuit: Bool = false
        
        @AppStorage("AppleShowAllFiles", store: stores["finder"]!)
        static var showHiddenFiles: Bool = false
        
        //    @AppStorage("NSDocumentSaveNewDocumentsToCloud", store: stores["global"]!)
        //    static var saveToCloud: Bool = true
        
        @AppStorage("DisableAllAnimations", store: stores["finder"]!)
        static var disableFinderAnimations: Bool = false
        
        @AppStorage("WarnOnEmptyTrash", store: stores["finder"]!)
        static var warnWhenEmptyingTrash: Bool = true
        
        @AppStorage("ProhibitEject", store: stores["finder"]!)
        static var disableEject: Bool = false
        
        @AppStorage("ProhibitFinderPreferences", store: stores["finder"]!)
        static var disableFinderSettings: Bool = false
        
        @AppStorage("ProhibitGoToFolder", store: stores["finder"]!)
        static var disableGoToFolder: Bool = false
        
        @AppStorage("ProhibitEmptyTrash", store: stores["finder"]!)
        static var disableEmptyTrash: Bool = false
        
        @AppStorage("ProhibitConnectTo", store: stores["finder"]!)
        static var disableConnectToServer: Bool = false
        
        @AppStorage("FinderSounds", store: stores["finder"]!)
        static var finderSounds: Bool = false
        
        @AppStorage("ArchiveTimestamp", store: stores["finder"]!)
        static var archiveTimestamp: Bool = false
        
        @AppStorage("_FXShowPosixPathInTitle", store: stores["finder"]!)
        static var showFullPathInFinderTitleBar: Bool = false
        
        @AppStorage("DSDontWriteNetworkStores", store: stores["finder"]!)
        static var disableDSStoreOnNetworkVolumes: Bool = false
        
        @AppStorage("DSDontWriteUSBStores", store: stores["finder"]!)
        static var disableDSStoreOnUSBVolumes: Bool = false
    }
}

struct FinderPane_Previews: PreviewProvider {
    static var previews: some View {
        FinderPane()
    }
}
