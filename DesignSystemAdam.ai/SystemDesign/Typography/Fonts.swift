//
//  Fonts.swift
//  Adam.ai
//
//  Created by Maged Omar on 23/02/2022.
//

import Foundation


/// ** Font Name **  based on App Language "En" or "Ar".
typealias Font = EnFont

/// ** Inter ** Family Fonts
///
/// Fonts Weight:
/// - Inter-Light
/// - Inter-Regular
/// - Inter-SemiBold
/// - Inter-Bold
enum EnFont: String {
    case Light300 = "Inter-Light"
    case Regular400 = "Inter-Regular"
    case SemiBold600 = "Inter-SemiBold"
    case Bold800 = "Inter-Bold"
    
    var name: String {
        return self.rawValue
    }
}

/// ** Almarai ** Family Fonts
///
/// Fonts Weight:
/// - Almarai-Light
/// - Almarai-Regular
/// - Almarai-Bold
/// - Almarai-ExtraBold
enum ArFont: String {
    case Light300   = "Almarai-Light"
    case Regular400 = "Almarai-Regular"
    case SemiBold600 = "Almarai-Bold"
    case Bold800 =  "Almarai-ExtraBold"
    
    var name: String {
        return self.rawValue
    }
}



