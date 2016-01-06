//
//  BaseViewController.swift
//  BaseViewControllerSwift
//
//  Created by Aaron McTavish on 06/01/2016.
//  Copyright © 2016 BaseViewControllerSwift. All rights reserved.
//

import UIKit


/// Generic base view controller that automatically loads the underlying `BaseView` of type `T`.
class BaseViewController<T : UIView>: UIViewController {
    
    
    // MARK: - Properties
    
    var underlyingView: T {
        if let myView = view as? T {
            return myView
        }
        
        let newView = T()
        view = newView
        return newView
    }
    
    
    // MARK: - Initializers
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    
    // MARK: - View Lifecycle
    
    override func loadView() {
        view = T()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupAccessibility()
    }
    
    
    // MARK: - Setup
    
    // Abstract method. Subclasses should override this method to setup their view.
    func setupView() {
        
    }
    
    // Abstract method. Subclasses should override this method to add accessibility.
    func setupAccessibility() {
        
    }
    
}

