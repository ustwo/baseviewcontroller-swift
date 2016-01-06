//
//  BaseViewControllerSwiftTests.swift
//  BaseViewControllerSwiftTests
//
//  Created by Aaron McTavish on 06/01/2016.
//  Copyright © 2016 BaseViewControllerSwift. All rights reserved.
//

import XCTest

@testable import BaseViewControllerSwift


class BaseViewControllerSwiftTests: XCTestCase {
    
    
    // MARK: - Properties
    
    var viewController: MockViewController!
    
    
    // MARK: - Setup/Teardown
    
    override func setUp() {
        super.setUp()
        
        viewController = MockViewController()
        viewController.loadView()
        viewController.viewDidLoad()
    }
    
    
    // MARK: - Tests
    
    func testSetup() {
        // Tests
        XCTAssertTrue(viewController.isSetupViewCalled)
        XCTAssertTrue(viewController.isSetupAccessibilityCalled)
    }
    
    func testUnderlyingView() {
        // Given
        let expectedText = "Foo"
        
        // When
        viewController.underlyingView.text = expectedText
        
        // Tests
        XCTAssertEqual(viewController.underlyingView.text, expectedText)
    }
    
    func testUnderlyingView_ChangeRootView() {
        // Given
        let button = UIButton()
        
        // When
        viewController.view = button
        viewController.underlyingView.text = "Foo"
        
        // Tests
        XCTAssertTrue(viewController.view is UILabel)
    }
    
}
