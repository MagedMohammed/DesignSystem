//
//  ButtonsStates.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 07/03/2022.
//

import Foundation
import UIKit

/// The following  Button States is used  **consistently**  throughout the system
///
///  **SDBStates** Options  :
/// - "Default "
/// - "Focused"
/// - "Clicked"
/// - "Disabled"
/// - "Loading"
typealias SDBStates = DesignSystem.ButtonsStates

extension DesignSystem {
    
    /// The following  Button States is used  **consistently**  throughout the system.
    ///
    ///  __States__  Options:
    /// - "Default "
    /// - "Focused"
    /// - "Clicked"
    /// - "Disabled"
    /// - "Loading"
    enum ButtonsStates: String {
        case Default
        case Focused
        case Clicked
        case Disabled
        case Loading
        
        /// Return Button Style From Typography
        ///
        /// __Notes:__ CaptionB Style for buttons
        var font: UIFont { return SDFont.CaptionB.font }
        
        /// **return** State Color **Value**
        var color: UIColor {
            switch self {
                /// PrimaryPrimary500
            case .Default:
                return SDColor.PrimaryPrimary500.color
                /// PrimaryPrimary600
            case .Focused:
                return SDColor.PrimaryPrimary600.color
                /// PrimaryPrimary700
            case .Clicked:
                return SDColor.PrimaryPrimary700.color
                /// PrimaryPrimary500
            case .Disabled:
                return SDColor.PrimaryPrimary500.color
                /// PrimaryPrimary500
            case .Loading:
                return SDColor.PrimaryPrimary500.color
            }
        }
    }
}
