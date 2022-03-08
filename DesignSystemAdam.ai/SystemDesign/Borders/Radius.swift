//
//  Radius.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 06/03/2022.
//

import Foundation
import UIKit

typealias SDRadius = DesignSystem.Radius
extension DesignSystem{
    
    enum Radius: String {
        case XS
        case SM
        case MD
        case LG
        
        
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

