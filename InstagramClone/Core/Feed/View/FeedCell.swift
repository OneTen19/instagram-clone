//
//  FeedCell.swift
//  InstagramClone
//
//  Created by OneTen on 8/21/24.
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        VStack{
            // image + username
            HStack{
                if let user = post.user {
                    CircularProfileImageView(user: user, size: .xSmall)
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            
            
            // post image
            KFImage(URL(string: post.imageurl))
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            // action buttons
            HStack(spacing: 16){
                Button {
                    print("Like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }

                Button {
                    print("Share post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(.black)
            
            
            // likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                
            
            // caption label
            HStack{
                Text("\(post.user?.username ?? "") ").fontWeight(.bold) +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            .font(.footnote)
            
            Text("\(post.timestamp.dateValue())")
                .font(.footnote)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[1])
}
