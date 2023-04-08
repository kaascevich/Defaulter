//
//  DockPane.swift
//  Defaulter
//
//  Created by Kaleb on 4/1/23.
//

import SwiftUI

struct AddSpacerButton: View {
    @State private var size: SpacerSize = .medium
    private enum SpacerSize: String, CaseIterable {
        case small
        case medium
    }
    
    @State private var section: DockSection = .apps
    private enum DockSection: String, CaseIterable {
        case apps
        case stacks
    }
    
    @State private var isShowingMoreOptions = false
    
    var body: some View {
        Button("Add Spacer...") {
            isShowingMoreOptions.toggle()
        }
        .sheet(isPresented: $isShowingMoreOptions) {
            NavigationStack {
                Form {
                    Picker("Spacer size:", selection: $size) {
                        ForEach(SpacerSize.allCases, id: \.self) { size in
                            Text(size.rawValue.capitalized)
                                .tag(size.rawValue)
                        }
                    }
                    Picker("Section:", selection: $section) {
                        ForEach(DockSection.allCases, id: \.self) { section in
                            Text(section.rawValue.capitalized)
                                .tag(section.rawValue)
                        }
                    }
                }
                .formStyle(.grouped)
                .frame(minHeight: 115)
                .navigationTitle("Add Spacer")
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isShowingMoreOptions = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            DockPane.Defaults.addSpacer(addToStacksArea: section == .stacks, isSmall: size == .small)
                            isShowingMoreOptions = false
                        }
                    }
                }
            }
        }
    }
}

struct AddSpacerButton_Previews: PreviewProvider {
    static var previews: some View {
        AddSpacerButton()
    }
}
