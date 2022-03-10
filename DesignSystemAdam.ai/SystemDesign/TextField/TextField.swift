//
//  TextField.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 07/03/2022.
//

import UIKit


class AdamTextField: UITextField {
    
    /// Set TextField  Style
    @IBInspectable var style: String = "" {
        didSet {
            guard let state = SDTFStates(rawValue: style) else { return }
            self.setStyle(states: state)
        }
    }
}



extension UITextField {
    /// __setStyle__ function for TextField
    ///
    /// - Parameters:
    /// - Parameter states: the style of TextField Style From design system
    ///
    ///  __States:__
    /// - Active
    /// - Default
    /// - Disabled
    /// - Error
    /// - Filled
    func setStyle(states: SDTFStates){
        
        switch states {
        case .Default, .Error, .Filled:
            let attributes = [
                NSAttributedString.Key.foregroundColor: SDColor.SecondaryGray700.color,
                NSAttributedString.Key.font : SDFont.BodyR.font
            ]
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "", attributes: attributes)
            self.backgroundColor = .clear
            self.borderStyle = .none
            self.isEnabled = true

        case .Active:
            let attributes = [
                NSAttributedString.Key.foregroundColor: SDColor.SecondaryGray700.color,
                NSAttributedString.Key.font : SDFont.BodyR.font
            ]
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "", attributes: attributes)
            self.backgroundColor = .clear
            self.borderStyle = .none
            self.isEnabled = true
 //
//            let border = CALayer()
//            let height = CGFloat(2.0)
//            border.borderColor = UIColor.darkGray.cgColor
//            border.frame = CGRect(x: self.frame.size.width - height, y: 0, width:  self.frame.size.width, height: self.frame.size.height)
//            border.borderWidth = height
//            self.layer.addSublayer(border)
//            self.layer.masksToBounds = true

        case .Disabled:
            let attributes = [
                NSAttributedString.Key.foregroundColor: SDColor.SecondaryGray600.color,
                NSAttributedString.Key.font : SDFont.BodyR.font
            ]
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "", attributes: attributes)
            self.backgroundColor = .clear
            self.borderStyle = .none
            self.isEnabled = false
            
        }
    }
}
