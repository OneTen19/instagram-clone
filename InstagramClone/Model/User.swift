//
//  User.swift
//  InstagramClone
//
//  Created by OneTen on 8/22/24.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "User01", profileImageUrl: nil, fullname: "User01 fullname", bio: "User01 bio", email: "User01@naver.com"),
        .init(id: NSUUID().uuidString, username: "User02", profileImageUrl: nil, fullname: "User02 fullname", bio: "User02 bio", email: "User02@naver.com"),
        .init(id: NSUUID().uuidString, username: "User03", profileImageUrl: nil, fullname: "User03 fullname", bio: "User03 bio", email: "User03@naver.com"),
        .init(id: NSUUID().uuidString, username: "User04", profileImageUrl: nil, fullname: "User04 fullname", bio: "User04 bi0", email: "User04@naver.com")
    ]
}
