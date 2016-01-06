//
//  ViewController.swift
//  iOS Example
//
//  Created by Aaron McTavish on 06/01/2016.
//  Copyright © 2016 BaseViewControllerSwift. All rights reserved.
//

import UIKit

import BaseViewControllerSwift


final class ProfileViewController: BaseViewController<ProfileView> {
    
    
    // MARK: - Properties
    
    private let profile: Profile
    
    
    // MARK: - Initializers
    
    init(profile: Profile) {
        self.profile = profile
        
        super.init()
    }

    
    // MARK: - View Lifecycle

    override func setupView() {
        super.setupView()
        
        underlyingView.titleLabel.text = profile.name
        underlyingView.finishedButton.addTarget(self, action: Selector("finishedButtonPressed:"), forControlEvents: .TouchUpInside)
    }
    
    override func setupAccessibility() {
        super.setupAccessibility()
        
        underlyingView.profileImage.accessibilityLabel = NSLocalizedString("Image of", comment: "") + " " +  profile.name
    }
    
    
    // MARK: - Control Actions
    
    func finishedButtonPressed(sender: UIButton) {
        let alertController = UIAlertController(title: nil, message: "🎉", preferredStyle: .Alert)
        
        let doneAction = UIAlertAction(title: NSLocalizedString("Done", comment: ""), style: .Default, handler: nil)
        alertController.addAction(doneAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }

}

