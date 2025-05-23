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
    var senderPetId: String
    var receiverPetId: String
    var createdAt: Date
}

// MARK: - Message
struct Message: Codable {
    let msgId: String
    var roomId: String
    var content: String
    var sendMsgAt: Date
}
