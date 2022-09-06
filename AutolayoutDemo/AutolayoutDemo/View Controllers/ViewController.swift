//
//  ViewController.swift
//  AutolayoutDemo
//
//  Created by Andrew Riordan on 8/25/22.
//

import UIKit

class ViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle { .darkContent }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let fourColorsView = FourColorsView()
        fourColorsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fourColorsView)
        
        let factor = 0.8
        
        NSLayoutConstraint.activate([
            // Since the colors view has no intrinsic content size, set desired, low-priority size constraints
            fourColorsView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor,
                                                  multiplier: factor, priority: .defaultLow),
            fourColorsView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor,
                                                   multiplier: factor, priority: .defaultLow),
        
            // Regardless what happens, the view shouldn't be larger than 80% of the superview size
            fourColorsView.widthAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.widthAnchor,
                                                  multiplier: factor, priority: .defaultHigh),
            fourColorsView.heightAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.heightAnchor,
                                                   multiplier: factor, priority: .defaultHigh),
            
            fourColorsView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            fourColorsView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}

