//
//  Typography.swift
//  Adam.ai
//
//  Created by Maged Omar on 23/02/2022.
//

import Foundation
import UIKit


typealias SDFont = DesignSystem.Typography
extension DesignSystem{
    
    enum Typography: String {
        case H1
        case H2
        case H3
        case H4
        case H5
        case H6
        case BodyR
        case BodyB
        case CaptionR
        case CaptionB
        case HintR
        case HintB
        
        private var fontDiscriptor: CustomFontDiscriptor {
            switch self {
            case .H1:
                return CustomFontDiscriptor(font: .Bold800, size: 50, style: .title1)
            case .H2:
                return CustomFontDiscriptor(font: .Bold800 , size: 42, style: .title1)
            case .H3:
                return CustomFontDiscriptor(font: .Bold800, size: 35, style: .title1)
            case .H4:
                return CustomFontDiscriptor(font: .Bold800, size: 29, style: .title1)
            case .H5:
                return CustomFontDiscriptor(font: .Bold800, size: 24, style: .title1)
            case .H6:
                return CustomFontDiscriptor(font: .Bold800, size: 20, style: .title1)
            case .BodyR:
                return CustomFontDiscriptor(font: .Regular400, size: 17, style: .body)
            case .BodyB:
                return CustomFontDiscriptor(font: .Bold800, size: 17, style: .body)
            case .CaptionR :
                return CustomFontDiscriptor(font: .Regular400, size: 14, style: .caption1)
            case .CaptionB:
                return CustomFontDiscriptor(font: .Bold800, size: 14, style: .caption1)
            case .HintR:
                return CustomFontDiscriptor(font: .Regular400, size: 12, style: .caption2)
            case .HintB:
                return CustomFontDiscriptor(font: .Bold800, size: 12, style: .caption2)
                
            }
        }
        var font: UIFont {
            guard let newfont = UIFont(name: fontDiscriptor.font.rawValue, size: fontDiscriptor.size) else {
                return UIFont.preferredFont(forTextStyle: fontDiscriptor.style)
            }
            
            let fontMetrices = UIFontMetrics(forTextStyle: fontDiscriptor.style)
            return fontMetrices.scaledFont(for: newfont)
        }
    }
}
