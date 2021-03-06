//
//  DoubleRoundingTests.swift
//  
//
//  Created by Turner Eison on 3/28/20.
//

import XCTest
@testable import CharlieKit

final class DoubleRoundingTests: XCTestCase {
    
    // MARK: - Testing .round()
    func testRoundWithRoundingUp() {
        var number: Double = 123.456
        number.round(to: 2)
        XCTAssertEqual(number, 123.46)
    }
    
    func testRoundWithRoundingDown() {
        var number: Double = 123.454
        number.round(to: 2)
        XCTAssertEqual(number, 123.45)
    }
    
    // MARK: - Testing .rounded()
    func testRoundedWithRoundingUp() {
        let number: Double = 123.456
        XCTAssertEqual(number.rounded(to: 2), 123.46)
    }
    
    func testRoundedWithRoundingDown() {
        let number: Double = 123.454
        XCTAssertEqual(number.rounded(to: 2), 123.45)
    }
    
    
    
    static var allTests = [
        ("testRoundWithRoundingUp", testRoundWithRoundingUp),
        ("testRoundWithRoundingDown", testRoundWithRoundingDown),
        ("testRoundedWithRoundingUp", testRoundedWithRoundingUp),
        ("testRoundedWithRoundingDown", testRoundedWithRoundingDown),
    ]
}
