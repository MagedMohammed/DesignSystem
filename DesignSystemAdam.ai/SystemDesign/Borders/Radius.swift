//
//  Radius.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 06/03/2022.
//

import Foundation
import UIKit

/// The following  Radius is used  **consistently**  throughout the system
///
///  **SDRadius** Options  :
/// - "XS "
/// - "SM"
/// - "MD"
/// - "LG"
typealias SDRadius = DesignSystem.Radius

extension DesignSystem{
    
    /// The following  Radius is used  **consistently**  throughout the system.
    ///
    ///  ## Radius Options
    /// - ``XS``
    /// - ``SM``
    /// - ``MD``
    /// - ``LG``
    enum Radius: String {
        case XS
        case SM
        case MD
        case LG
        
        /// **return**  Radius  **Value**
        ///
        /// - Parameters:
        /// - view : get high from view frame to return circle radius value.
        ///
        /// __Notes:__ it is  Optional
        func radius(view: UIView = UIView()) -> CGFloat {
            switch self{
            case .XS:
                return 4
            case .SM:
                return 8
            case .MD:
                return 16
            case .LG:
                return view.frame.height/2
            }
        }
        
    }
}

