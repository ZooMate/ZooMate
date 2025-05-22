//
//  User.swift
//  ZooMate
//
//  Created by Song Kim on 5/22/25.
//

import SwiftUI

// MARK: - 사용자 정보
struct User: Identifiable, Codable, Hashable {
    let id: UUID                     // 사용자 고유 ID
    var name: String                // 사용자 이름
    var region: String              // 사용자 지역(구)
    var pets: [Pet]                 // 사용자가 보유한 반려동물 목록
    var mail: String                // 이메일
    var birth: Date                 // 생년월일
    var profile: URL?               // 프로필 이미지 URL
}
