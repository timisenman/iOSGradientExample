//
//  ViewController.swift
//  GradientPlay
//
//  Created by Tim Isenman on 5/4/19.
//  Copyright © 2019 Timothy Isenman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        self.view.backgroundColor = .white
        self.view.addSubview(topView)
        self.view.addSubview(secondView)
        self.view.addSubview(thirdView)
        self.view.addSubview(fourthView)
        self.view.addSubview(fifthView)
        
        let width = self.view.frame.width
        let yMid = self.view.frame.minY
        let height: CGFloat = 163
        
        topView.frame = CGRect(x: 0, y: yMid, width: width, height: height)
        topView.setGradient(colorOne: UIColor.red, colorTwo: UIColor.orange)
        
        secondView.frame = CGRect(x: 0, y: yMid+height, width: width, height: height)
        secondView.setGradient(colorOne: UIColor.orange, colorTwo: UIColor.purple)
        
        thirdView.frame = CGRect(x: 0, y: yMid+(height*2), width: width, height: height)
        thirdView.setGradient(colorOne: UIColor.purple, colorTwo: UIColor.magenta)
        
        fourthView.frame = CGRect(x: 0, y: yMid+(height*3), width: width, height: height)
        fourthView.setGradient(colorOne: UIColor.magenta, colorTwo: UIColor.blue)
        
        fifthView.frame = CGRect(x: 0, y: yMid+(height*4), width: width, height: height)
        fifthView.setGradient(colorOne: UIColor.blue, colorTwo: UIColor.cyan)
    }
    
    let topView: UIView = {
        let newView = UIView()
        return newView
    }()
    
    let secondView: UIView = {
        let newView = UIView()
        return newView
    }()
    
    let thirdView: UIView = {
        let newView = UIView()
        return newView
    }()
    
    let fourthView: UIView = {
        let newView = UIView()
        return newView
    }()
    
    let fifthView: UIView = {
        let newView = UIView()
        return newView
    }()
    
    


}

extension UIView {
    func setGradient(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0,1.0]
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

