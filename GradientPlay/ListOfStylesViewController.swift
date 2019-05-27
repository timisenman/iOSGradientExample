//
//  ListOfStylesViewController.swift
//  GradientPlay
//
//  Created by Tim Isenman on 5/27/19.
//  Copyright © 2019 Timothy Isenman. All rights reserved.
//

import UIKit

class ListOfStylesViewController: UIViewController {
    
    let nextButton = CustomButton()
    let previousButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.setGradient(colorOne: UIColor.green, colorTwo: UIColor.blue)
        
        nextButton.backgroundColor = .white
        self.view.addSubview(nextButton)
        let nextX = self.view.bounds.maxX - 75
        let nextY = self.view.bounds.maxY - 75
        nextButton.frame = CGRect(x: nextX, y: nextY, width: 50, height: 50)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        previousButton.backgroundColor = .white
        self.view.addSubview(previousButton)
        let prevX = self.view.bounds.minX + 25
        previousButton.frame = CGRect(x: prevX, y: nextY, width: 50, height: 50)
        previousButton.addTarget(self, action: #selector(prevButtonTapped), for: .touchUpInside)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    @objc func nextButtonTapped() {
        nextButton.playTapticResponse()
    }
    
    @objc func prevButtonTapped() {
        navigationController?.popViewController(animated: true)
        previousButton.playTapticResponse()
    }
    
    
}
