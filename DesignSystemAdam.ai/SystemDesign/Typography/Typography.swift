//
//  Typography.swift
//  Adam.ai
//
//  Created by Maged Omar on 23/02/2022.
//

import Foundation
import UIKit

/// The following  Typography is used  **consistently**  throughout the system
///
/// Typography Style Options :
/// - H1
/// - H2
/// - H3
/// - H4
/// - H5
/// - H6
/// - BodyR
/// - BodyB
/// - CaptionR
/// - CaptionB
/// - HintR
/// - HintB
typealias SDFont = DesignSystem.Typography

extension DesignSystem{
    
    enum Typography: String {
        /// Font size 50px, Bold weight  and title1 Style
        case H1
        /// Font size 42px, Bold weight  and title1 Style
        case H2
        /// Font size 35px, Bold weight  and title1 Style
        case H3
        /// Font size 29px, Bold weight  and title1 Style
        case H4
        /// Font size 24px, Bold weight  and title1 Style
        case H5
        /// Font size 20px, Bold weight  and title1 Style
        case H6
        /// Font size 17px, Regular weight  and body Style
        case BodyR
        /// Font size 17px, Bold weight  and body Style
        case BodyB
        /// Font size 14px, Regular weight  and caption1 Style
        case CaptionR
        /// Font size 14px, Bold weight  and caption1 Style
        case CaptionB
        /// Font size 12px, Regular weight  and caption2 Style
        case HintR
        /// Font size 12px, Regular weight  and caption2 Style
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
        /// ** return ** UIFont With Design system Style
        var font: UIFont {
            guard let newfont = UIFont(name: fontDiscriptor.font.rawValue, size: fontDiscriptor.size) else {
                return UIFont.preferredFont(forTextStyle: fontDiscriptor.style)
            }
            
            let fontMetrices = UIFontMetrics(forTextStyle: fontDiscriptor.style)
            return fontMetrices.scaledFont(for: newfont)
        }
    }
}
