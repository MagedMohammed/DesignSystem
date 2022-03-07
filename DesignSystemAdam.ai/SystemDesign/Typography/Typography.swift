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
        case titleR
        case titleB
        case bodyR
        case bodyB
        case captionR
        case captionB
        
        private var fontDiscriptor: CustomFontDiscriptor {
            switch self {
            case .H1:
                return CustomFontDiscriptor(font: .Regular400, size: 50, style: .largeTitle)
            case .H2:
                return CustomFontDiscriptor(font: .Regular400 , size: 42, style: .largeTitle)
            case .H3:
                return CustomFontDiscriptor(font: .Regular400, size: 42, style: .largeTitle)
            case .H4:
                return CustomFontDiscriptor(font: .Regular400, size: 42, style: .largeTitle)
            case .H5:
                return CustomFontDiscriptor(font: .Regular400, size: 42, style: .largeTitle)
            case .H6:
                return CustomFontDiscriptor(font: .Regular400, size: 42, style: .largeTitle)
            case .titleR:
                return CustomFontDiscriptor(font: .Regular400, size: 17, style: .title1)
            case .titleB:
                return CustomFontDiscriptor(font: .Bold800, size: 17, style: .title1)
            case .bodyR:
                return CustomFontDiscriptor(font: .Regular400, size: 14, style: .body)
            case .bodyB:
                return CustomFontDiscriptor(font: .Bold800, size: 14, style: .body)
            case .captionR:
                return CustomFontDiscriptor(font: .Regular400, size: 12, style: .caption1)
            case .captionB:
                return CustomFontDiscriptor(font: .Bold800, size: 12, style: .caption1)

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
