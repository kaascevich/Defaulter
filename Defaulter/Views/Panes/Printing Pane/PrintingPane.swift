//
//  PrintingPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct PrintingPane: Pane {
    var name = "Printing"
    var systemImage = "printer"
    var category: PaneCategory = .system
    
    var body: some View {
        Toggle("Quit printer app when printing finishes", isOn: Defaults.$quitPrinterAppWhenPrintingFinishes)
    }
}

extension PrintingPane {
    struct Defaults {
        @AppStorage("Quit When Finished", store: stores["printing"]!)
        static var quitPrinterAppWhenPrintingFinishes: Bool = true
    }
}

struct PrintingPane_Previews: PreviewProvider {
    static var previews: some View {
        PrintingPane()
    }
}
