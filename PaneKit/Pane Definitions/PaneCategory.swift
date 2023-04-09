//
//  PaneCategory.swift
//  PaneKit
//
//  Created by Kaleb on 4/8/23.
//

import Foundation

/// Represents a category of panes.
public struct PaneCategory: Codable {
    /// The name of this category.
    public var name: String
    
    /// The name of the SF symbol to use as this category's icon.
    public var icon: String?
    
    /// The default categories included with the app.
    public struct DefaultCategory: Codable {
        /// Used for panes that control system features or system-wide defaults.
        ///
        /// Defaults in this category would belong in the System Settings app.
        public static let system = PaneCategory("System", systemImage: "gearshape")
        
        /// Used for panes that control app-specific defaults.
        ///
        /// Defaults in this category would belong in the Settings menu of their corresponding app.
        public static let apps = PaneCategory("Apps", systemImage: "app.badge")
    }
    
    /// Creates a category.
    ///
    /// - Parameters:
    ///   - name: The name of this category.
    ///   - icon: The name of the SF symbol to use as this category's icon.
    public init(_ name: String, systemImage: String? = nil) {
        self.name = name
        self.icon = systemImage
    }
}
