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
        self.view.addSubview(myView)
        
        let width = self.view.frame.width
        let yMid = self.view.frame.midY
        myView.frame = CGRect(x: 0, y: yMid-50, width: width, height: 100)
        myView.setGradient(colorOne: UIColor.red, colorTwo: UIColor.orange)
    }
    
    let myView: UIView = {
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
//        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
//        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
}

