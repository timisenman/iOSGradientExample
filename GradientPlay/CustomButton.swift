//
//  CustomButton.swift
//  GradientPlay
//
//  Created by Tim Isenman on 5/27/19.
//  Copyright © 2019 Timothy Isenman. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //Only used for storyboards, which we don't use.
    }
    
//    public convenience init(buttonTitle: String, width: CGFloat, height: CGFloat) {
//        self.init(frame: .zero)
//        self.buttonTitle = buttonTitle
//        self.width = width
//        self.height = height
//    }
    
    private func setupButton() {
        setupShadow()
        layer.cornerRadius = 25
        clipsToBounds = true
        layer.masksToBounds = false
        setGradient(colorOne: UIColor.white, colorTwo: UIColor.lightGray)
        
    }
    
    private func setupShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowOpacity = 0.8
    }
    
    public func playTapticResponse() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
        print("Tap")
    }
    
    
}
