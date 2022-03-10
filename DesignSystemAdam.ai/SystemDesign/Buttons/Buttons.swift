//
//  Buttons.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 07/03/2022.
//

import UIKit

/// Create UIButton With Design System Options
class AdamButtons: UIButton {
    
    /// Set Radius Value
    @IBInspectable var radius: String = "" {
        didSet {
            guard let value = SDRadius(rawValue: radius)?.radius(view: self) else{ return }
            self.layer.cornerRadius = value
        }
    }
    
    /// Selected Style From Button States
    @IBInspectable var style: String = "" {
        didSet {
            guard let state = SDBStates(rawValue: style) else { return }
            if style == "Disabled" {
                self.isEnabled = false
                self.alpha = 0.5
            }
            self.titleLabel!.font = state.font
            self.backgroundColor = state.color
            self.layer.cornerRadius = SDRadius.SM.radius()
            self.titleLabel!.textColor = SDColor.white.color
            self.tintColor = SDColor.white.color
        }
    }
}
