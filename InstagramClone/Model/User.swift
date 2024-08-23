//
//  User.swift
//  InstagramClone
//
//  Created by OneTen on 8/22/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "user01", profileImageUrl: "user01", fullname: "user01 fullname", bio: "user01 bio", email: "user01@naver.com"),
        .init(id: NSUUID().uuidString, username: "user02", profileImageUrl: "user02", fullname: "user02 fullname", bio: "user02 bio", email: "user02@naver.com"),
        .init(id: NSUUID().uuidString, username: "user03", profileImageUrl: "user03", fullname: "user03 fullname", bio: "user03 bio", email: "user03@naver.com"),
        .init(id: NSUUID().uuidString, username: "user04", profileImageUrl: "user04", fullname: "user04 fullname", bio: "user04 bi0", email: "user04@naver.com")
    ]
}
