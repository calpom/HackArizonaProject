//
//  WeekdaySelector.swift
//  HackArizonaProject
//
//  Created by Cody Joseph Walker on 1/13/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//
import UIKit

@IBDesignable class WeekdaySelector: UIStackView {
    
    //MARK: Properties
    
    private var dayButtons = [UIButton]()
    
    let dayArray = [0, 0, 0, 0, 0, 0, 0]
    
    @IBInspectable var dayButtonSize: CGSize = CGSize(width: 43.0, height: 43.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var dayButtonCount: Int = 7 {
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    
    //MARK: Action
    
    @objc func dayButtonTapped(button: UIButton) {
        print("Button Pressed!!!")
    }

    
    //MARK: Pirvate Methods
    
    private func setupButtons() {
        
        // Clear any existing buttons
        for button in dayButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        dayButtons.removeAll()
        
        for _ in 0..<dayButtonCount {
            // Create button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: dayButtonSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: dayButtonSize.width).isActive = true
            
            // Setup button action
            button.addTarget(self, action: #selector(WeekdaySelector.dayButtonTapped(button:)), for: .touchUpInside)
            
            // Add button to stack
            addArrangedSubview(button)
            
            // Add new button to weekday button array
            dayButtons.append(button)
        }
    }
}
