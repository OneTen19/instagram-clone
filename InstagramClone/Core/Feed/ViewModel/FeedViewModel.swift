//
//  FeedViewModel.swift
//  InstagramClone
//
//  Created by OneTen on 9/2/24.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        let snapshot = try await Firestore.firestore().collection("posts").getDocuments()
        
        self.posts = try snapshot.documents.compactMap({ try $0.data(as: Post.self) })
        
        /* 고차함수 안 쓰면 이런 방식으로 할 수 있음
        self.posts = try snapshot.documents.compactMap({ document in
            let post = try document.data(as: Post.self)
            return post
        })
        */
        
        for i in 0..<posts.count {
            let post = posts[i]
            let ownerUid = post.ownerUid
            let postUser = try await UserService.fetchUser(withUid: ownerUid)
            self.posts[i].user = postUser
        }

    }
    
    
}
