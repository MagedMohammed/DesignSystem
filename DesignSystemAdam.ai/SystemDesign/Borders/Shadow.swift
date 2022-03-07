//
//  Shadow.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 06/03/2022.
//

import Foundation
import UIKit

typealias SDShadow = DesignSystem.Shadow
extension DesignSystem{
    
    enum Shadow: String {
        case XS
        case SM
        case MD
        case LG
        
        var color: CGColor { return UIColor(red: 0.129, green: 0.145, blue: 0.161, alpha: 0.15).cgColor }
        
        var shadowOpacity: Float {
            return 1
        }
        
        var shadowRadius: CGFloat {
            switch self{
            case .XS:
                return 4
            case .SM:
                return 8
            case .MD:
                return 16
            case .LG:
                return 32
            }
        }
        
        var shadowOffset: CGSize {
            switch self{
            case .XS:
                return CGSize(width: 0, height: 1)
            case .SM:
                return CGSize(width: 0, height: 2)
            case .MD:
                return CGSize(width: 0, height: 6)
            case .LG:
                return CGSize(width: 0, height: 8)
            }
        }
    }
}
