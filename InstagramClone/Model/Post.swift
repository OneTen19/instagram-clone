//
//  Post.swift
//  InstagramClone
//
//  Created by OneTen on 8/23/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageurl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test ppost caption 1",
            likes: 123,
            imageurl: "user01",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test ppost caption 2",
            likes: 107,
            imageurl: "user02",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test ppost caption 3",
            likes: 79,
            imageurl: "user03",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test ppost caption 4",
            likes: 256,
            imageurl: "user04",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        )
    ]
}
