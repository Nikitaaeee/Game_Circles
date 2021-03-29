//
//  CircleView.swift
//  21 game
//
//  Created by Никита on 29.03.2021.
//

import UIKit

@IBDesignable class CircleView: UIView {
    
    @IBInspectable var roundButton: Bool = true {
        didSet {
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2

        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
