//
//  RomanNumeralCalculatorTests.swift
//  RomanNumeralCalculatorTests
//
//  Created by Loreto E. Torres on 1/20/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest
@testable import RomanNumeralCalculator // This a must for all the XCTAssert functions to work
// "@testable import ..." This gives the testToRoman() access to the internal functions of the app bundle

class RomanNumeralCalculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testToRoman() {
        XCTAssertEqual(toRoman(1), "I")
        XCTAssertEqual(toRoman(2), "II")
        XCTAssertEqual(toRoman(3), "III")
        XCTAssertEqual(toRoman(4), "IV")
        XCTAssertEqual(toRoman(5), "V")
        XCTAssertEqual(toRoman(6), "VI")
        XCTAssertEqual(toRoman(8), "VIII")
        XCTAssertEqual(toRoman(90), "XC")
        XCTAssertEqual(toRoman(1955), "MCM LV")
        XCTAssertEqual(toRoman(2017), "MMXVII")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
