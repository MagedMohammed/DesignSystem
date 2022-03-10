//
//  Stroke.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 06/03/2022.
//

import Foundation
import UIKit

/// The following  Stroke is used  **consistently**  throughout the system
///
///  **SDStroke** Options  :
/// - "Default "
/// - "Active1"
/// - "Active2"
/// - "Active3"
/// - "Dashed"
typealias SDStroke = DesignSystem.Stroke

extension DesignSystem{
    /// The following  Stroke is used  **consistently**  throughout the system.
    ///
    ///  ## Stroke Options
    /// - ``Default``
    /// - ``Active1``
    /// - ``Active2``
    /// - ``Active3``
    /// - ``Dashed``
    enum Stroke: String {
        case Default
        case Active1
        case Active2
        case Active3
        case Dashed

        /// **return** Border Width **Value**
        var borderWidth: CGFloat {
            switch self {
            case .Default:
                return 1
            case .Active1:
                return 1
            case .Active2:
                return 2
            case .Active3:
                return 3
            case .Dashed:
                return 1
            }
        }
        
        /// **return** Border Color **Value**
        var borderColor: CGColor {
            switch self {
            case .Default:
                return UIColor(red: 0.808, green: 0.831, blue: 0.855, alpha: 1).cgColor
            case .Active1:
                return UIColor(red: 0.004, green: 0.494, blue: 0.902, alpha: 1).cgColor
            case .Active2:
                return UIColor(red: 0.004, green: 0.494, blue: 0.902, alpha: 1).cgColor
            case .Active3:
                return UIColor(red: 0.004, green: 0.494, blue: 0.902, alpha: 1).cgColor
            case .Dashed:
                return UIColor(red: 0.808, green: 0.831, blue: 0.855, alpha: 1).cgColor
            }
        }
    }
}

