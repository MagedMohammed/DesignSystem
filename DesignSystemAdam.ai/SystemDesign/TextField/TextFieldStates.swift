//
//  TextFieldStates.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 07/03/2022.
//

import Foundation

typealias SDTFStates = DesignSystem.TextFieldStates

extension DesignSystem {
    enum TextFieldStates {
        case Default
        case Focus
        case Error
        case Filled
        case Disabled
    }
}
