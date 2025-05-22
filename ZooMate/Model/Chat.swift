//
//  Chat.swift
//  ZooMate
//
//  Created by Song Kim on 5/22/25.
//

import SwiftUI

// MARK: - ChatRoom
struct ChatRoom: Identifiable, Codable, Hashable {
    let id: UUID
    var senderId: UUID
    var senderPetId: UUID
    var receiverId: UUID
    var receiverPetId: UUID
    var createdAt: Date
}

// MARK: - Message
struct Message: Identifiable, Codable, Hashable {
    let id: UUID
    var chatId: UUID
    var senderId: UUID
    var senderPetId: UUID
    var content: String
    var createdAt: Date
}
