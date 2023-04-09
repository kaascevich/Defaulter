//
//  PaneKitTests.swift
//  PaneKitTests
//
//  Created by Kaleb on 4/8/23.
//

import XCTest
@testable import PaneKit

final class PaneKitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: - Pane Encoding and Decoding
    
    func testPaneEncoding() throws {
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        FileManager.default.createFile(atPath: "Users/kaleb/Desktop/TestPane.plist", contents: try encoder.encode(testPane))
    }
}

// MARK: - Constants

let testPane = {
    let category = PaneCategory(.system, systemImage: "laptopcomputer")
    let metadata = PaneMetadata("General", systemImage: "gearshape", category: category)
    let pane = Pane(metadata)
    return pane
}()
