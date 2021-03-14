//
//  CognizantTestUITests.swift
//  CognizantTestUITests
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import XCTest

class CognizantTestUITests: XCTestCase {

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testUI(){
        
        
        let app = XCUIApplication()
        app.textFields["Enter Username"].tap()
        
        let enterPasswordSecureTextField = app.secureTextFields["Enter Password"]
        enterPasswordSecureTextField.tap()
        enterPasswordSecureTextField.tap()
        app.buttons["Login"].tap()
        let tablesQuery = XCUIApplication().tables

                                        
                

    }
}
