//
//  DateTimeHelpSheet.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct DateTimeHelpSheet: View {
    @Binding var isShown: Bool
    @State private var isExperimentingWithDateTimeFormats = false
    
    var body: some View {
        NavigationStack {
            List {
                Text("The date and time used with these examples is:\nTuesday, February 8, 2022 AD 9:05:30 PM Eastern Standard Time")
                Divider()
                DisclosureGroup("**a:** AM/PM") {
                    Text("`a` = PM")
                }
                Group {
                    DisclosureGroup("**d:** day of month") {
                        Text("`d` = 8")
                        Text("`dd` = 08")
                    }
                    DisclosureGroup("**D:** day of year") {
                        Text("`D` = 39")
                        Text("`DD` = 39")
                        Text("`DDD` = 039")
                    }
                    DisclosureGroup("**e:** day of week") {
                        Text("`e` = 2")
                        Text("`EEE` = Tue")
                        Text("`EEEE` = Tuesday")
                    }
                    DisclosureGroup("**G:** era") {
                        Text("`G` = AD")
                    }
                    DisclosureGroup("**h:** hour") {
                        Text("`h` = 9")
                        Text("`hh` = 09")
                        Text("`H` = 21")
                        Text("`HH` = 21")
                    }
                    DisclosureGroup("**m:** minute") {
                        Text("`m` = 8")
                        Text("`mm` = 08")
                    }
                    DisclosureGroup("**M:** month") {
                        Text("`M` = 2")
                        Text("`MM` = 02")
                        Text("`MMM` = Feb")
                        Text("`MMMM` = February")
                    }
                    DisclosureGroup("**s:** second") {
                        Text("`s` = 30")
                        Text("`ss` = 30")
                    }
                    DisclosureGroup("**y:** year") {
                        Text("`yy` = 22")
                        Text("`yyyy` = 2022")
                    }
                    DisclosureGroup("**z:** time zone") {
                        Text("`zzz` = EST")
                        Text("`zzzz` = Eastern Standard Time")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Try it out!") {
                        isExperimentingWithDateTimeFormats.toggle()
                    }
                    .sheet(isPresented: $isExperimentingWithDateTimeFormats) {
                        DateTimeFormatExperimentationSheet(isShown: $isExperimentingWithDateTimeFormats)
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") {
                        isShown = false
                    }
                }
            }
            .navigationTitle("Date/Time Formatting")
            .frame(width: 700, height: 300)
        }
    }
}

struct DateTimeHelpSheet_Previews: PreviewProvider {
    static var previews: some View {
        DateTimeHelpSheet(isShown: .constant(true))
    }
}
