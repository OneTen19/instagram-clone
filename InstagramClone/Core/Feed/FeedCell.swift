//
//  FeedCell.swift
//  InstagramClone
//
//  Created by OneTen on 8/21/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            // image + username
            HStack{
                Image("PostImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("OneTen")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            
            // post image
            Image("PostImage")
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
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                
            
            // caption label
            HStack{
                Text("OneTen ").fontWeight(.bold) +
                Text("이 사진은 마녀배달부 키키의 사진입니다.")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            .font(.footnote)
            
            Text("6h ago")
                .font(.footnote)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
        }
    }
}

#Preview {
    FeedCell()
}
