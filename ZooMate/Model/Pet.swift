//
//  Pet.swift
//  ZooMate
//
//  Created by Song Kim on 5/22/25.
//

import SwiftUI

// MARK: - 반려동물 정보
struct Pet: Identifiable, Codable, Hashable {
    let id: UUID                     // 반려동물 고유 ID
    var name: String                // 반려동물 이름
    var breed: String               // 품종 (예: 진돗개)
    var photos: [URL]               // 반려동물 사진 리스트
    var species: Species            // 종 (고양이, 강아지 등)
    var gender: Gender              // 성별 (male, female)
    var isNeutering: Bool             // 중성화 여부 (true/false)
    var isPublic: Bool              // 반려동물 프로필 공개 여부 (true/false)
    var weight: Double              // 몸무게
    var tag: [String]               // 태그 목록 (예: ["활발함", "온순함"])
}

// MARK: - 성별 enum
enum Gender: String, Codable, Hashable {
    case male
    case female
}

// MARK: - 종 enum
enum Species: String, Codable, Hashable {
    case cat = "고양이"
    case dog = "강아지"
    case bird = "조류"
    case reptile = "파충류"
}
