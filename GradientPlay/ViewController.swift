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
        
        //Add Views to superView
        //Adding subviews must occur before constraints are added
        self.view.addSubview(topView)
        self.view.addSubview(secondView)
        self.view.addSubview(thirdView)
        self.view.addSubview(fourthView)
        self.view.addSubview(fifthView)
        
        //Declare frame-based values to use as view dimensions
        let width = self.view.frame.width
        let yMid = self.view.frame.minY
        
        //Set arbitrary height - Adjust at your descretion
        let height: CGFloat = 163
        
        //Add each individual view
        //Similar to above - Must define the constraints after these views
            //have been added as subviews
        //Add the height of each view multiplied by the position it's in to make
            //a perfectly flush array of gradients
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
    
    //Declare individual views AFTER viewDidLoad. They won't appear otherwise.
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

//Add this extension to UIView class to allow any
    //subclass of UIView to inherit the same behavior
extension UIView {
    func setGradient(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0,1.0]
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

