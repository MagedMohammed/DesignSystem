//
//  Label.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 05/03/2022.
//

import Foundation
import UIKit

@IBDesignable
class AdamLabel: UILabel {
    
    @IBInspectable var style : UIFont = SDEnFont.titleR.font {
       didSet {
           
       }
    }
    
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
       didSet {
           layer.cornerRadius = cornerRadius
           layer.masksToBounds = cornerRadius > 0
       }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
       didSet {
           layer.borderWidth = borderWidth
       }
    }
    @IBInspectable var borderColor: UIColor? {
       didSet {
           layer.borderColor = borderColor?.cgColor
       }
    }
}
