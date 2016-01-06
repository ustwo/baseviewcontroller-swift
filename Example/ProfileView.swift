//
//  View.swift
//  iOS Example
//
//  Created by Aaron McTavish on 06/01/2016.
//  Copyright © 2016 BaseViewControllerSwift. All rights reserved.
//

import UIKit


final class ProfileView: UIView {
    
    
    // MARK: - Properties
    
    let titleLabel = UILabel()
    let profileImage = UIImageView()
    let finishedButton = UIButton(type: .System)
    
    private let stackView = UIStackView()
    
    
    // MARK: - Initializers
    
    convenience init() {
        self.init(frame: CGRectZero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        titleLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleTitle1)
        stackView.addArrangedSubview(titleLabel)
        
        profileImage.contentMode = .ScaleAspectFit
        stackView.addArrangedSubview(profileImage)
        
        finishedButton.setTitle(NSLocalizedString("Finished", comment: ""), forState: .Normal)
        stackView.addArrangedSubview(finishedButton)
        
        stackView.axis = .Vertical
        stackView.distribution = .Fill
        stackView.alignment = .Center
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .Left, relatedBy: .Equal, toItem: self, attribute: .Left, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .Bottom, relatedBy: .Equal, toItem: self, attribute: .Bottom, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .Right, relatedBy: .Equal, toItem: self, attribute: .Right, multiplier: 1.0, constant: 0.0))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
