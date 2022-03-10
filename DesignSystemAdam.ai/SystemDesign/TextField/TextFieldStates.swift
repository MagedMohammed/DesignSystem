//
//  TextFieldStates.swift
//  DesignSystemAdam.ai
//
//  Created by Maged Omar on 07/03/2022.
//

import Foundation

/// The following  TextFiled States is used  **consistently**  throughout the system
///
///  **SDTFStates** Options  :
/// - "Default "
/// - "Active"
/// - "Error"
/// - "Filled"
/// - "Disabled"
typealias SDTFStates = DesignSystem.TextFieldStates

extension DesignSystem {
    
    /// The following  TextField States is used  **consistently**  throughout the system.
    ///
    ///  __States__  Options:
    /// - "Default "
    /// - "Active"
    /// - "Error"
    /// - "Filled"
    /// - "Disabled"
    enum TextFieldStates: String {
        case Default
        case Active
        case Error
        case Filled
        case Disabled
    }
}
