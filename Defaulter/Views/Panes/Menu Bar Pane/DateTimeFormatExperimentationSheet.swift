//
//  TryItOutSheet.swift
//  Defaulter
//
//  Created by Kaleb on 4/2/23.
//

import SwiftUI

struct DateTimeFormatExperimentationSheet: View {
    @Binding var isShown: Bool
    
    @State private var date = Date.now
    @State private var format = ""
    
    var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter
    }
    
    var body: some View {
        Form {
            DatePicker("Date:", selection: $date)
            TextField("Format:", text: $format)
            Divider()
            Text(formatter.string(from: date))
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    isShown = false
                }
            }
        }
    }
}

struct DateTimeFormatExperimentationSheet_Previews: PreviewProvider {
    static var previews: some View {
        DateTimeFormatExperimentationSheet(isShown: .constant(true))
    }
}
