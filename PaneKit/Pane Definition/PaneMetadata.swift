//
//  PaneMetadata.swift
//  PaneKit
//
//  Created by Kaleb on 4/8/23.
//

import Foundation

/// Represents metadata for defaults panes.
struct PaneMetadata: Codable {
    /// The name of this pane.
    var name: String
    
    /// The name of the SF symbol to use as this pane's icon.
    var systemImage: String
    
    /// The category this pane belongs in.
    var category: PaneCategory?
    
    /// Creates a metadata object.
    ///
    /// - Parameters:
    ///   - name: The name of this pane.
    ///   - systemImage: The name of the SF symbol to use as this pane's icon.
    ///   - category: The category this pane belongs in.
    init(_ name: String, systemImage: String, category: PaneCategory? = nil) {
        self.name = name
        self.systemImage = systemImage
        self.category = category
    }
}
