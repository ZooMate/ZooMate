//
//  CategoryTabView.swift
//  ZooMate
//
//  Created by Song Kim on 5/23/25.
//

import SwiftUI

struct CategoryTabView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Spacer()
                    Button {
                        // 액션
                    } label: {
                        Text("강아지")
                            .font(Font.notoSansBold(size: 12))
                            .foregroundStyle(.category)
                            .frame(width: geometry.size.width/4.5, height: 30)
                            .background(
                                Capsule()
                                    .stroke(.category, lineWidth: 1.5)
                            )
                    }
                    Spacer()
                    Button {
                        // 액션
                    } label: {
                        Text("고양이")
                            .font(Font.notoSansBold(size: 12))
                            .foregroundStyle(.category)
                            .frame(width: geometry.size.width/4.5, height: 30)
                            .background(
                                Capsule()
                                    .stroke(.category, lineWidth: 1.5)
                            )
                    }
                    Spacer()
                    Button {
                        // 액션
                    } label: {
                        Text("파충류")
                            .font(Font.notoSansBold(size: 12))
                            .foregroundStyle(.category)
                            .frame(width: geometry.size.width/4.5, height: 30)
                            .background(
                                Capsule()
                                    .stroke(.category, lineWidth: 1.5)
                            )
                    }
                    Spacer()
                    Button {
                        // 액션
                    } label: {
                        Text("조류")
                            .font(Font.notoSansBold(size: 12))
                            .foregroundStyle(.category)
                            .frame(width: geometry.size.width/4.5, height: 30)
                            .background(
                                Capsule()
                                    .stroke(.category, lineWidth: 1.5)
                            )
                    }
                    Spacer()
                }
            }
            .padding(.top, 10)
        }
    }
}

#Preview {
    CategoryTabView()
}
