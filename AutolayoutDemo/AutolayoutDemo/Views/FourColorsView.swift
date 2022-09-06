//
//  FourColorsView.swift
//  AutolayoutDemo
//
//  Created by Andrew Riordan on 8/27/22.
//

import UIKit

class FourColorsView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.finishSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.finishSetup()
    }
    
    private func finishSetup() {
        func createColorView(_ color: UIColor) -> UIView {
            let result = UIView()
            result.translatesAutoresizingMaskIntoConstraints = false
            result.backgroundColor = color
            addSubview(result)
            
            return result
        }
        
        // Though not explicitly stated, the mockup shows a square aspect ratio
        widthAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        // I would ordinarily approach this in a less verbose and more flexible way, perhaps
        // with two UIStackViews, but I think the goal is to show an understanding of autolayout
        let redView = createColorView(.red)

        NSLayoutConstraint.activate([
            redView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            redView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5),
            
            redView.topAnchor.constraint(equalTo: topAnchor),
            redView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        let greenView = createColorView(.green)

        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: topAnchor),
            greenView.leadingAnchor.constraint(equalTo: redView.trailingAnchor),
            greenView.trailingAnchor.constraint(equalTo: trailingAnchor),
            greenView.bottomAnchor.constraint(equalTo: redView.bottomAnchor)
        ])

        let blueView = createColorView(.blue)

        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor),
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor),
            blueView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            blueView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        let yellowView = createColorView(.yellow)

        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: redView.bottomAnchor),
            yellowView.leadingAnchor.constraint(equalTo: redView.trailingAnchor),
            yellowView.trailingAnchor.constraint(equalTo: trailingAnchor),
            yellowView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
