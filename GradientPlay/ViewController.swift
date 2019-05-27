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
        self.view.addSubview(nextViewButton)
        
        //Declare frame-based values to use as view dimensions
        let width = self.view.frame.width
        let yMid = self.view.frame.minY
        
        //Set arbitrary height - Adjust at your descretion
        let viewHeight: CGFloat = 163
        
        //Add each individual view
        //Similar to above - Must define the constraints after these views
            //have been added as subviews
        //Add the height of each view multiplied by the position it's in to make
            //a perfectly flush array of gradients
        topView.frame = CGRect(x: 0, y: yMid, width: width, height: viewHeight)
        topView.setGradient(colorOne: UIColor.red, colorTwo: UIColor.orange)
        
        secondView.frame = CGRect(x: 0, y: yMid+viewHeight, width: width, height: viewHeight)
        secondView.setGradient(colorOne: UIColor.orange, colorTwo: UIColor.purple)
        
        thirdView.frame = CGRect(x: 0, y: yMid+(viewHeight*2), width: width, height: viewHeight)
        thirdView.setGradient(colorOne: UIColor.purple, colorTwo: UIColor.magenta)
        
        fourthView.frame = CGRect(x: 0, y: yMid+(viewHeight*3), width: width, height: viewHeight)
        fourthView.setGradient(colorOne: UIColor.magenta, colorTwo: UIColor.blue)
        
        fifthView.frame = CGRect(x: 0, y: yMid+(viewHeight*4), width: width, height: viewHeight)
        fifthView.setGradient(colorOne: UIColor.blue, colorTwo: UIColor.cyan)
        
        let nextX = self.view.bounds.maxX - 75
        let nextY = self.view.bounds.maxY - 75
        nextViewButton.frame = CGRect(x: nextX, y: nextY, width: 50, height: 50)
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
    
    let nextViewButton: CustomButton = {
        let button = CustomButton()
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(pushToNextView), for: .touchUpInside)
        return button
    }()
    
    @objc func pushToNextView() {
        let next = ListOfStylesViewController()
        navigationController?.pushViewController(next, animated: true)
        nextViewButton.playTapticResponse()
    }

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

