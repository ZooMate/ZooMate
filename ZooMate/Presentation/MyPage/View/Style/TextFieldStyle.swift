//
//  TextFieldStyle.swift
//  ZooMate
//
//  Created by 최준영 on 5/23/25.
//

import SwiftUI

struct TextFieldStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding(20) // TextField 내부 placeholder padding
            .font(.notoSansMedium(size: 16))
            .foregroundStyle(.mainText)
            .background(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.category, lineWidth: 2)
            )
            .frame(height: 60)
            .padding(.horizontal, 16) // TextField <-> View 간의 padding
            .padding(.bottom, 25)
    }
}

extension View {
    func textFieldStyle() -> some View {
        self.modifier(TextFieldStyle())
    }
}
