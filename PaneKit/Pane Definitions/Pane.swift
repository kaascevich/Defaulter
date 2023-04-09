//
//  Pane.swift
//  PaneKit
//
//  Created by Kaleb on 4/8/23.
//

import Foundation

/// Represents a defaults pane.
public struct Pane: Codable {
    /// The metadata for this pane.
    public var metadata: PaneMetadata
    
    /// Creates a pane using a metadata object.
    ///
    /// - Parameters:
    ///   - metadata: The metadata to identify this pane with.
    public init(_ metadata: PaneMetadata) {
        self.metadata = metadata
    }
}
