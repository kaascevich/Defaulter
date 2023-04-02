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
            Toggle("Disable animations", isOn: systemSettings.$disableFinderAnimations)
            Toggle("Warn when emptying the Trash", isOn: systemSettings.$warnWhenEmptyingTrash)
            Toggle("Play sounds", isOn: systemSettings.$finderSounds)
            Toggle("Include timestamp in archive filenames", isOn: systemSettings.$archiveTimestamp)
            Section("Menu Bar Commands") {
                Toggle("Disable File > Eject", isOn: systemSettings.$disableEject)
                Toggle("Disable Finder > Settings...", isOn: systemSettings.$disableFinderSettings)
                Toggle("Disable Finder > Empty Trash...", isOn: systemSettings.$disableEmptyTrash)
                Toggle("Disable Go > Go to Folder...", isOn: systemSettings.$disableGoToFolder)
                Toggle("Disable Go > Connect to Server...", isOn: systemSettings.$disableConnectToServer)
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
