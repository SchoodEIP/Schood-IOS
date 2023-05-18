//
//  SchoodUITests.swift
//  SchoodUITests
//
//  Created by Matéo Deroche on 17/04/2023.
//

import XCTest

final class SchoodUITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {}

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        let emailTextField = app.textFields["Email"]
        XCTAssertTrue(emailTextField.exists, "  -----> EMAILTEXTFIELD NOT FOUND")
        emailTextField.tap()
        emailTextField.typeText("email")
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        XCTAssertTrue(passwordSecureTextField.exists, "  -----> PASSWORDSECURETEXTFIELD NOT FOUND")
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("password")
        
        let connectionButton = app.buttons["Connection"]
        XCTAssertTrue(connectionButton.exists, "  -----> BUTTON NOT FOUND")
        app.buttons["Connection"].tap()
        
        let welcomeSentence = app.staticTexts["Surveys"]
        XCTAssert(welcomeSentence.exists, "  -----> SURVEYstatictext NOT FOUND")
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
