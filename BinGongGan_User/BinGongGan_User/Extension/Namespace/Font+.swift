//
//  Font+.swift
//  BinGongGan_User
//
//  Created by 마경미 on 05.09.23.
//

import Foundation
import SwiftUI

extension Font {
    static var head1Regular: Font {
        return Font.custom("AppleSDGothicNeo-Regular", size: 22)
    }
    
    static var head1Bold: Font {
        return Font.custom("AppleSDGothicNeo-Bold", size: 22)
    }
    
    static var body1Regular: Font {
        return Font.custom("AppleSDGothicNeo-Regular", size: 16)
    }
    
    static var body1Bold: Font {
        return Font.custom("AppleSDGothicNeo-Bold", size: 16)
    }
    
    static var captionRegular: Font {
        return Font.custom("AppleSDGothicNeo-Regular", size: 14)
    }
    
    static var captionBold: Font {
        return Font.custom("AppleSDGothicNeo-Bold", size: 14)
    }
}
