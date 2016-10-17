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
    
    fileprivate let profile: Profile
    
    
    // MARK: - Initializers
    
    init(profile: Profile) {
        self.profile = profile
        
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    // MARK: - View Lifecycle

    override func setupView() {
        super.setupView()
        
        underlyingView.titleLabel.text = profile.name
        underlyingView.finishedButton.addTarget(self, action: #selector(ProfileViewController.finishedButtonPressed(_:)), for: .touchUpInside)
    }
    
    override func setupAccessibility() {
        super.setupAccessibility()
        
        underlyingView.profileImage.accessibilityLabel = NSLocalizedString("Image of", comment: "") + " " +  profile.name
    }
    
    
    // MARK: - Control Actions
    
    func finishedButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: nil, message: "🎉", preferredStyle: .alert)
        
        let doneAction = UIAlertAction(title: NSLocalizedString("Done", comment: ""), style: .default, handler: nil)
        alertController.addAction(doneAction)
        
        present(alertController, animated: true, completion: nil)
    }

}

