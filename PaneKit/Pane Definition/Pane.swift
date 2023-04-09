//
//  Pane.swift
//  PaneKit
//
//  Created by Kaleb on 4/8/23.
//

import Foundation

/// Represents a defaults pane.
struct Pane: Codable {
    /// The metadata for this pane.
    var metadata: PaneMetadata
    
    /// Creates a pane using a metadata object.
    ///
    /// - Parameters:
    ///   - metadata: The metadata to identify this pane with.
    init(_ metadata: PaneMetadata) {
        self.metadata = metadata
    }
}
