//
//  Colors.swift
//  Adam.ai
//
//  Created by Maged Omar on 23/02/2022.
//

import Foundation
import UIKit

/// The following  Colors is used  **consistently**  throughout the system
typealias SDColor = DesignSystem.Colors

extension DesignSystem{
    
    /// System Design Colors names from Colors Assets
    ///
    /// __Notes:__ please Don't use any color out of Colors Assets
    enum Colors: String {
        
        /// PrimaryColorScale
        case PrimaryPrimary50 = "PrimaryPrimary50"
        case PrimaryPrimary100 = "PrimaryPrimary100"
        case PrimaryPrimary200 = "PrimaryPrimary200"
        case PrimaryPrimary300 = "PrimaryPrimary300"
        case PrimaryPrimary400 = "PrimaryPrimary400"
        case PrimaryPrimary500 = "PrimaryPrimary500"
        case PrimaryPrimary600 = "PrimaryPrimary600"
        case PrimaryPrimary700 = "PrimaryPrimary700"
        case PrimaryPrimary800 = "PrimaryPrimary800"
        case PrimaryPrimary900 = "PrimaryPrimary900"
        
        /// SecondaryGrayScale
        case SecondaryGray50 = "SecondaryGray50"
        case SecondaryGray100 = "SecondaryGray100"
        case SecondaryGray200 = "SecondaryGray200"
        case SecondaryGray300 = "SecondaryGray300"
        case SecondaryGray400 = "SecondaryGray400"
        case SecondaryGray500 = "SecondaryGray500"
        case SecondaryGray600 = "SecondaryGray600"
        case SecondaryGray700 = "SecondaryGray700"
        case SecondaryGray800 = "SecondaryGray800"
        case SecondaryGray900 = "SecondaryGray900"
        
        /// white - black
        case white = "SecondaryWhite"
        case black = "SecondaryBlack"
        case clear = "Clear"
        
        /// DestructiveRedScale
        case DestructiveRed100 = "DestructiveRed100"
        case DestructiveRed200 = "DestructiveRed200"
        case DestructiveRed300 = "DestructiveRed300"
        case DestructiveRed400 = "DestructiveRed400"
        case DestructiveRed500 = "DestructiveRed500"
        case DestructiveRed600 = "DestructiveRed600"
        case DestructiveRed700 = "DestructiveRed700"
        
        /// StatesTraffic Light
        case DefaultLight = "Default - Light"
        case StateGreenLight = "StateGreen - Light"
        case StateGreenMain = "StateGreen - Main"
        case StateRedLight = "StateRed - Light"
        case StateRedMain = "StateRed - Main"
        case StateYellowLight = "StateYellow - Light"
        case StateYellowMain = "StateYellow - Main"
        
        /// Tertiary - Accent Colors
        case Beige1 = "Beige1"
        case Beige2 = "Beige2"
        case Beige3 = "Beige3"
        case Beige4 = "Beige4"
        case Black2 = "Black2"
        case Blue1 = "Blue1"
        case Blue2 = "Blue2"
        case Blue3 = "Blue3"
        case Brown = "Brown"
        case Green1 = "Green1"
        case Green2 = "Green2"
        case Green3 = "Green3"
        case Green4 = "Green4"
        case Grey1 = "Grey1"
        case Grey2 = "Grey2"
        case Orange = "Orange"
        case Purple1 = "Purple1"
        case Purple2 = "Purple2"
        case Purple3 = "Purple3"
        case Purple4 = "Purple4"
        case Purple5 = "Purple5"
        case Purple6 = "Purple6"
        case Red1 = "Red1"
        case Red2 = "Red2"
        case Yellow1 = "Yellow1"
        case Yellow2 = "Yellow2"
        
        ///  **return**  UIColor from Design System  Colors
        var color: UIColor {
            guard let color = UIColor(named: self.rawValue) else {
                fatalError("Color not found")
            }
            return color
        }
    }
}
