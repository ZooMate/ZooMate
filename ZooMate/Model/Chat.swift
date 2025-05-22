//
//  Chat.swift
//  ZooMate
//
//  Created by Song Kim on 5/22/25.
//

import SwiftUI

// MARK: - ChatRoom
struct ChatRoom: Codable {
    let roomId: String
    var senderId: String
    var senderPetId: String
    var receiverId: String
    var receiverPetId: String
    var createdAt: Date
}

// MARK: - Message
struct Message: Codable {
    let msgId: String
    var chatId: String
    var senderId: String
    var senderPetId: String
    var content: String
    var sendMsgAt: Date
}
