//
//  ButtonsStates.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 07/03/2022.
//

import Foundation
import UIKit
typealias SDBStates = DesignSystem.ButtonsStates

extension DesignSystem {
    
    enum ButtonsStates: String {
        case Default
        case Focused
        case Clicked
        case Disabled
        case Loading
        
        
        var font: UIFont { return SDFont.CaptionB.font }
        
        var color: UIColor {
            switch self {
            case .Default:
                return SDColor.PrimaryPrimary500.color
            case .Focused:
                return SDColor.PrimaryPrimary600.color
            case .Clicked:
                return SDColor.PrimaryPrimary700.color
            case .Disabled:
                return SDColor.PrimaryPrimary500.color
            case .Loading:
                return SDColor.PrimaryPrimary500.color
            }
        }
    }
}
