//
//  FinderPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct FinderPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("Show hidden files", isOn: systemSettings.$showHiddenFiles)
            Toggle("Show full path in title bar", isOn: systemSettings.$showFullPathInFinderTitleBar)
            Toggle("Disable animations", isOn: systemSettings.$disableFinderAnimations)
            Toggle("Warn when emptying the Trash", isOn: systemSettings.$warnWhenEmptyingTrash)
            Toggle("Play sounds", isOn: systemSettings.$finderSounds)
            Toggle("Include timestamp in archive filenames", isOn: systemSettings.$archiveTimestamp)
            Section("Menu Bar Commands") {
                Toggle("Enable Finder > Quit Finder", isOn: systemSettings.$enableFinderQuit)
                Toggle("Disable File > Eject", isOn: systemSettings.$disableEject)
                Toggle("Disable Finder > Settings...", isOn: systemSettings.$disableFinderSettings)
                Toggle("Disable Finder > Empty Trash...", isOn: systemSettings.$disableEmptyTrash)
                Toggle("Disable Go > Go to Folder...", isOn: systemSettings.$disableGoToFolder)
                Toggle("Disable Go > Connect to Server...", isOn: systemSettings.$disableConnectToServer)
            }
            Section(".DS_Store Files") {
                Toggle("Don't create .DS_Store files on network volumes", isOn: systemSettings.$disableDSStoreOnNetworkVolumes)
                Toggle("Don't create .DS_Store files on USB volumes", isOn: systemSettings.$disableDSStoreOnUSBVolumes)
            }
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct FinderPane_Previews: PreviewProvider {
    static var previews: some View {
        FinderPane()
    }
}
