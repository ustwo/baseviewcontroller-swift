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
    let finishedButton = UIButton(type: .system)
    
    fileprivate let stackView = UIStackView()
    
    
    // MARK: - Initializers
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        titleLabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.title1)
        stackView.addArrangedSubview(titleLabel)
        
        profileImage.contentMode = .scaleAspectFit
        stackView.addArrangedSubview(profileImage)
        
        finishedButton.setTitle(NSLocalizedString("Finished", comment: ""), for: UIControlState())
        stackView.addArrangedSubview(finishedButton)
        
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0))
        addConstraint(NSLayoutConstraint(item: stackView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0.0))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
