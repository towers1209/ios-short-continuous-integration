//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Loreto E. Torres on 1/20/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each 
        //  test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup 
        //  will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface 
        //  orientation - required for your tests before they run. The setUp method 
        //  is a good place to do this.
        
        // LET - Device app is setup only for portrait mode.
        XCUIDevice.shared().orientation = .portrait
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each 
        //  test method in the class.
        super.tearDown()
    }
    
    // LET - Use the testExample as a template.
    func testExample() {
        // Use recording to get started writing UI tests. (LET NOTE: Xcode captures 
        //  the actions in the simulator.)
        // Use XCTAssert and related functions to verify your tests produce the 
        //  correct results.
    }
    
    // LET - Actual test - test that the keystrokes for the operation 1+1 
    //  (which should give "II" as result) works
    func testOnePlusOne() {
        // Use recording to get started writing UI tests. (LET NOTE: Xcode captures 
        //  the actions in the simulator.)
        // Use XCTAssert and related functions to verify your tests produce the 
        //correct results.
        
//        //NOTE the following sequence of instructions is the result of recorded
//        //  tapping the buttons for the operation 1+1. The last action captured,
//        //  app.staticTexts["calculated_value"].tap(),
//        //  is needed to access the resulting calculated value
//        // NOTE: The captured actions are not useful as is for testing but are
//        let app = XCUIApplication()
//        let iButton = app.buttons["I"]
//        iButton.tap()
//        app.buttons["+"].tap()
//        iButton.tap()
//        app.staticTexts["calculated_value"].tap()  // Use part of this captured
            // action as the basis for storing the computation result
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app.staticTexts["calculated_value"]

        // tap "I" button
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "I")
        
        // tap "+" button
        app.buttons["+"].tap()
        XCTAssertEqual(calculatedLabel.label, "I")
        
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "II")
    }
    
    func testOneMinusOne() {
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app.staticTexts["calculated_value"]
        
        // tap "I" button
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "I")
        
        // tap "-" button
        app.buttons["–"].tap()
        
        // tap "I" button
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "")
        
    }
    
    func testMinusOnePlusOne() {
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app.staticTexts["calculated_value"]
        
        // tap "-" button
        app.buttons["–"].tap()
        
        // tap "I" button
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "-I")
        
        // tap "+" button
        app.buttons["+"].tap()
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "")

        
        
    }
    
    
    
}
