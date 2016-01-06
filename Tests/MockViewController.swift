//
//  MockViewController.swift
//  BaseViewControllerSwift
//
//  Created by Aaron McTavish on 06/01/2016.
//  Copyright © 2016 BaseViewControllerSwift. All rights reserved.
//

import UIKit

@testable import BaseViewControllerSwift


final class MockViewController: BaseViewController<UILabel> {
    
    
    // MARK: - Properties
    
    var isSetupAccessibilityCalled = false
    var isSetupViewCalled = false
    
    
    // MARK: - BaseViewController
    
    override func setupView() {
        super.setupView()
        
        isSetupViewCalled = true
    }
    
    override func setupAccessibility() {
        super.setupAccessibility()
        
        isSetupAccessibilityCalled = true
    }
    
}
