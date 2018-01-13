//
//  WeekdaySelector.swift
//  HackArizonaProject
//
//  Created by Cody Joseph Walker on 1/13/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class WeekdaySelector: UIStackView {

    // MARK:  Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    
    // MARK: Private Methods
    
    private func setupButtons() {
        
        // Create button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 40.0).isActive = true
        
        // Add button to stack
        addArrangedSubview(button)
        
    }
}
