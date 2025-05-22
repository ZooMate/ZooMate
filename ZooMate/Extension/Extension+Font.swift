//
//  Extension+Font.swift
//  ZooMate
//
//  Created by Song Kim on 5/22/25.
//

import SwiftUI

extension Font {
    static func notoSansBold(size: CGFloat) -> Font {
        .custom("NotoSansKR-Bold", size: size)
    }

    static func notoSansMedium(size: CGFloat) -> Font {
        .custom("NotoSansKR-Medium", size: size)
    }

    static func notoSansRegular(size: CGFloat) -> Font {
        .custom("NotoSansKR-Regular", size: size)
    }
}
