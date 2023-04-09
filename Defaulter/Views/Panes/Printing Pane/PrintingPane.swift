//
//  PrintingPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct PrintingPane: View {
    @EnvironmentObject private var systemSettings: SystemSettings
    
    var body: some View {
        Form {
            Toggle("Quit printer app when printing finishes", isOn: systemSettings.$quitPrinterAppWhenPrintingFinishes)
        }
        .formStyle(.grouped)
        .scrollContentBackground(.hidden)
    }
}

struct PrintingPane_Previews: PreviewProvider {
    static var previews: some View {
        PrintingPane()
            .environmentObject(SystemSettings())
    }
}
