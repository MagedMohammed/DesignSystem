//
//  ViewStates.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 08/03/2022.
//

import Foundation
import UIKit

typealias SDVStates = DesignSystem.ViewStates

extension DesignSystem {
    enum ViewStates: String {
        case Default
        case Active
        case Error
        case Filled
        case Disabled
        
        var view: UIView {
            let view = UIView()
            
            switch self {
            case .Default, .Filled, .Disabled:
                view.backgroundColor = SDColor.SecondaryGray200.color
                view.layer.cornerRadius = SDRadius.SM.radius()
            case .Active:
                view.backgroundColor = SDColor.SecondaryGray200.color
                view.layer.cornerRadius = SDRadius.SM.radius()
                view.layer.borderColor = SDStroke.Active1.borderColor
                view.layer.borderWidth = SDStroke.Active1.borderWidth
            case .Error:
                view.backgroundColor = SDColor.SecondaryGray200.color
                view.layer.cornerRadius = SDRadius.SM.radius()
                view.layer.borderColor = SDColor.StateRedMain.color.cgColor
                view.layer.borderWidth = SDStroke.Active1.borderWidth
            }
            return view
        }
        
        
    }
}
